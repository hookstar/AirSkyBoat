/*
===========================================================================

Copyright (c) 2022 LandSandBoat Dev Teams

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see http://www.gnu.org/licenses/

===========================================================================
*/

#pragma once

#include "common/application.h"
#include "common/console_service.h"
#include "common/logging.h"
#include "common/md52.h"
#include "common/utils.h"

#include "map/packets/basic.h"

#include <asio/ts/buffer.hpp>
#include <asio/ts/internet.hpp>
#include <cstdlib>
#include <iostream>
#include <memory>
#include <utility>

// TODO: Move to enum
#define LOGIN_ATTEMPT         0x10
#define LOGIN_CREATE          0x20
#define LOGIN_CHANGE_PASSWORD 0x30

/*return result*/
#define LOGIN_SUCCESS                 0x01
#define LOGIN_SUCCESS_CREATE          0x03
#define LOGIN_SUCCESS_CHANGE_PASSWORD 0x06

#define LOGIN_REQUEST_NEW_PASSWORD 0x05

#define LOGIN_ERROR                 0x02
#define LOGIN_ERROR_CREATE          0x09
#define LOGIN_ERROR_CREATE_TAKEN    0x04
#define LOGIN_ERROR_CREATE_DISABLED 0x08
#define LOGIN_ERROR_CHANGE_PASSWORD 0x07

bool check_string(std::string const& str, std::size_t max_length)
{
    // clang-format off
    return !str.empty() &&
        str.size() <= max_length &&
        std::all_of(str.cbegin(), str.cend(),
        [](char const& c)
        {
            return c >= 0x20;
        });
    // clang-format on
}

class handler_session
: public std::enable_shared_from_this<handler_session>
{
public:
    handler_session(asio::ip::tcp::socket socket)
    : socket_(std::move(socket))
    {
    }

    virtual ~handler_session() = default;

    void start()
    {
        do_read();
    }

protected:
    void do_read()
    {
        auto self(shared_from_this());

        // clang-format off
        socket_.async_read_some(asio::buffer(data_, max_length),
        [this, self](std::error_code ec, std::size_t length)
        {
            if (!ec)
            {
                read_func();
            }
            else
            {
                ShowError(ec.message());
            }
        });
        // clang-format on
    }

    void do_write(std::size_t length)
    {
        auto self(shared_from_this());

        // clang-format off
        asio::async_write(socket_, asio::buffer(data_, length),
        [this, self](std::error_code ec, std::size_t /*length*/)
        {
            if (!ec)
            {
                write_func();
            }
            else
            {
                ShowError(ec.message());
            }
        });
        // clang-format on
    }

    virtual void read_func()  = 0;
    virtual void write_func() = 0;

protected:
    asio::ip::tcp::socket socket_;

    // TODO: Use std::array
    enum
    {
        max_length = 1024
    };
    char data_[max_length];
};

// Interaction with xiloader
class auth_session : public handler_session
{
public:
    auth_session(asio::ip::tcp::socket socket)
    : handler_session(std::move(socket))
    {
    }

protected:
    void read_func() override
    {
        int8 code = ref<uint8>(data_, 32);
        std::string username(data_, data_ + 16);
        std::string password(data_ + 16, data_ + 32);

        // TODO: Don't log these!
        ShowInfo(fmt::format("auth code: {}", code));
        ShowInfo(fmt::format("username : {}", username));
        ShowInfo(fmt::format("password : {}", password));

        // data check
        if (check_string(username, 16) && check_string(password, 16))
        {
            ShowWarning("login_parse: send unreadable data");
            return;
        }

        // TODO: Hook up escaping
        // char escaped_name[16 * 2 + 1];
        // char escaped_pass[32 * 2 + 1];
        // sql->EscapeString(escaped_name, username.c_str());
        // sql->EscapeString(escaped_pass, password.c_str());
        // username = escaped_name;
        // password = escaped_pass;

        switch (code)
        {
            case LOGIN_ATTEMPT:
            {
                ShowInfo("LOGIN_ATTEMPT");

                // Success
                std::memset(data_, 0, 33);
                ref<uint8>(data_, 0)  = LOGIN_SUCCESS;
                ref<uint32>(data_, 1) = 1001; // accid;
                do_write(33);

                // Fail
                // ref<uint8>(data_, 0) = LOGIN_ERROR;
                // do_write(1);
            }
            break;
            case LOGIN_CREATE:
            {
                ShowInfo("LOGIN_CREATE");

                ref<uint8>(data_, 0) = LOGIN_SUCCESS_CREATE;
                do_write(1);
            }
            break;
            default:
            {
                ShowError(fmt::format("Unhandled auth code: {}", code));
            }
            break;
        }
    }

    void write_func() override
    {
        do_read();
    }
};

// Main menu (Lobby)
// A comment on the packets below, defined as macros.
//   byte 0 - packet size
//   bytes 4-7 are the packet header "IXFF" (0x49, 0x58, 0x46, 0x46)
//   byte 8 - The expected message type:
//     0x03 - positive result
//     0x04 - error (in the case of an error, a uint16 error code is used at byte 32)
//     Other
class view_session : public handler_session
{
public:
    view_session(asio::ip::tcp::socket socket)
    : handler_session(std::move(socket))
    {
    }

protected:
    void read_func() override
    {
        uint8 code = ref<uint8>(data_, 8);
        ShowInfo(fmt::format("view code: {}", code));

        switch (code)
        {
            case 0x26: // 38: Version + Expansions
            {
                // TODO: Version Check
                ShowInfo("Version Check");
                std::string client_ver_data((data_ + 0x74), 6); // Full length is 10 but we drop last 4
                client_ver_data = client_ver_data + "xx_x";    // And then we replace those last 4..

                // TODO: Expansions Check
                ShowInfo("Expansions Check");

                std::array<uint8, 0x28> packet;

                packet[0] = 0x28; // size

                packet[4] = 0x49; // I
                packet[5] = 0x58; // X
                packet[6] = 0x46; // F
                packet[7] = 0x46; // F

                packet[8] = 0x03; // result

                // TODO: Get this from the db
                ref<uint16>(packet.data(), 32) = 4094; // Expansion Bitmask
                ref<uint16>(packet.data(), 36) = 253;  // Feature Bitmask

                // Hash the packet data and then write the value of the hash into the packet.
                unsigned char hash[16];
                md5((uint8*)data_, hash, 0x28);
                std::memcpy(data_ + 12, hash, 16);
                do_write(0x28);
            }
            break;
            case 0x1F: // 31:
            {
                // ref<uint8>(data_, 0) = 0x01;
                // do_write(5);
            }
            break;
        }
    }

    void write_func() override
    {
        do_read();
    }
};

class data_session : public handler_session
{
public:
    data_session(asio::ip::tcp::socket socket)
    : handler_session(std::move(socket))
    {
    }

protected:
    void read_func() override
    {
        ShowInfo("data");
        ShowInfo(data_);
    }

    void write_func() override
    {
        do_read();
    }
};

template <typename T>
class handler
{
public:
    handler(asio::io_context& io_context, unsigned int port)
    : acceptor_(io_context, asio::ip::tcp::endpoint(asio::ip::tcp::v4(), port))
    , socket_(io_context)
    {
        do_accept();
    }

private:
    void do_accept()
    {
        // clang-format off
        acceptor_.async_accept(socket_,
        [this](std::error_code ec)
        {
            if (!ec)
            {
                std::make_shared<T>(std::move(socket_))->start();
            }
            else
            {
                ShowError(ec.message());
            }

            do_accept();
        });
        // clang-format on
    }

    asio::ip::tcp::acceptor acceptor_;
    asio::ip::tcp::socket   socket_;
};

class ConnectServer final : public Application
{
public:
    ConnectServer(int argc, char** argv)
    : Application("connect", argc, argv)
    {
        // clang-format off
        gConsoleService->RegisterCommand("stats", "Print server runtime statistics",
        [](std::vector<std::string> inputs)
        {
            fmt::print("TODO: Some stats!\n");
        });
        // clang-format on

        try
        {
            asio::io_context io_context;

            ShowInfo("creating ports");

            handler<auth_session> auth(io_context, 54231);
            handler<view_session> view(io_context, 54001);
            handler<data_session> data(io_context, 54230);

            ShowInfo("starting io_context");
            io_context.run();
        }
        catch (std::exception& e)
        {
            ShowError(e.what());
        }
    }

    ~ConnectServer() override
    {
        // Everything should be handled with RAII
    }

    void Tick() override
    {
        Application::Tick();

        // Connect Server specific things
    }
};
