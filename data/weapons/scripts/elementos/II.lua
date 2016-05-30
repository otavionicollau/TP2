local min, max = 400,500 --Ataque mínino e ataque máximo

local w = {
	[1] = {ef = 7, sh = 4, dmg = COMBAT_FIREDAMAGE},
	[2] = {ef = 44, sh = 29, dmg = COMBAT_ICEDAMAGE},
	[3] = {ef = 21, sh = 30, dmg = COMBAT_POISONDAMAGE},
	[4] = {ef = 18, sh = 32, dmg = COMBAT_DEATHDAMAGE},
	[5] = {ef = 12, sh = 36, dmg = COMBAT_ENERGYDAMAGE},
	[6] = {ef = 35, sh = 27, dmg = COMBAT_PHYSICALDAMAGE},
	[7] = {ef = 50, sh = 31, dmg = COMBAT_HOLYDAMAGE}
}
-- 35 morte


function onUseWeapon(cid, var)
        local effect = getPlayerStorageValue(cid, 456191)
        local target = getCreatureTarget(cid)
				doPlayerSendCancel(cid, "")

        if target ~= 0 then
                local wx = w[effect] or w[math.random(#w)]
                doSendDistanceShoot(getThingPos(cid), getThingPos(target), wx.sh)
							--	addEvent(doAreaCombatHealth, 100, cid, wx.dmg, getThingPos(target), 0, -min, -max, wx.ef)

								doAreaCombatHealth(cid, wx.dmg, getThingPos(target), 0, -min, -max, wx.ef)
        end
        return true
end
