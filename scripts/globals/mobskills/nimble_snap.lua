-----------------------------------
-- Nimble Snap
-- Single target damage.
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/mobskills")
-----------------------------------
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    if mob:isMobType(xi.mobskills.mobType.NOTORIOUS) then
        numhits = 3
    else
        numhits = 1
    end
        accmod = 1
        info = xi.mobskills.mobPhysicalMove(mob, target, skill, numhits, accmod, 1, xi.mobskills.physicalTpBonus.DMG_VARIES, 1, 1.25, 1.5) --todo verify NM's FTP on retail/jimmy
        dmg = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.PHYSICAL, xi.damageType.SLASHING, info.hitslanded)
        target:takeDamage(dmg, mob, xi.attackType.PHYSICAL, xi.damageType.SLASHING)
    return dmg
end

return mobskillObject
