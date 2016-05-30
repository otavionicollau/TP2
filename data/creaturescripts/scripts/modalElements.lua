
local types = {
		[1] = {name = "ALEATORY", ID = -1},
		[2] = {name = "FIRE", ID = 1},
		[3] = {name = "ICE", ID = 2},
		[4] = {name = "POISON", ID = 3},
		[5] = {name = "DEATH", ID = 4},
		[6] = {name = "ENERGY", ID = 5},
		[7] = {name = "PHYSICAL", ID = 6},
		[8] = {name = "HOLY", ID = 7},
    }

function onModalWindow(player, modalWindowId, buttonId, choiceId)
    player:unregisterEvent("modalElements")

    if modalWindowId == 1005 then

    if buttonId == 100 then

		--	if player:getItemCount(9019) == 0 then
		--		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You must have a Mount Doll in your backpack!")
		--		return false
		--	end

            --player:removeItem(9019, 1)
						player:setStorageValue(456191, types[choiceId].ID)
            player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_YELLOW)
        end

    end
end
