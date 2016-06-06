function onUse(player, item, frompos, item2, topos)

	local monsterName = "Demon I"
	local position = player:getPosition()
	local monster = Game.createMonster(monsterName, position)


	if player:getStorageValue(monsterName) >= 0  then
		if player:getStorageValue(monsterName) <= 100 then
			if monster ~= nil then
							player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Voce sumonou "..player:getStorageValue(monsterName).. "%")
				player:setStorageValue(monsterName, player:getStorageValue(monsterName) + 1)
				monster:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
				position:sendMagicEffect(CONST_ME_MAGIC_RED)
			else
				player:sendCancelMessage("There is not enough room.")
				position:sendMagicEffect(CONST_ME_POFF)
			end
		else
				player:removeItem(11144,1)
				player:setStorageValue(monsterName, 0)
		end
	else
		player:setStorageValue(monsterName, 0)
	end
		return true
end
