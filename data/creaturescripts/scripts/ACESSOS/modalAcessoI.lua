function onModalWindow(player, modalWindowId, buttonId, choiceId)
    player:unregisterEvent("modalTaskI")

    if modalWindowId == 1007 then

    if buttonId == 100 then

		--	if player:getItemCount(9019) == 0 then
		--		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You must have a Mount Doll in your backpack!")
		--		return false
		--	end

            --player:removeItem(9019, 1)
						player:setStorageValue(252525, 0 )
            player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_YELLOW)
        end

    end
end
