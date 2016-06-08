function onUse(player, item, frompos, item2, topos)

	local monsterName = "[BONUS] Paiz The Pauperizer"
	local position = player:getPosition()
	local max = 3
	local min = 1
	local limite = math.random(min, max)
	local atual = 0;
	local porcentagem = 100
	local item = 13030



	if player:getStorageValue(monsterName) >= 0  then
		if player:getStorageValue(monsterName) <= porcentagem then

				while (atual <= limite) do
					atual = atual + 1
					monster = Game.createMonster(monsterName, position)
					position:sendMagicEffect(CONST_ME_MAGIC_RED)
				end

				player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Voce sumonou "..player:getStorageValue(monsterName).. "%")
				player:setStorageValue(monsterName, player:getStorageValue(monsterName) + 1)

		else
				player:removeItem(item,1)
				player:setStorageValue(monsterName, 0)
		end
	else
		player:setStorageValue(monsterName, 0)
	end
		return true
end
