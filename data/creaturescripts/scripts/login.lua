function onLogin(player)

	player:loadVipData()
	player:updateVipTime()

	local loginStr = "Bem vindo ao " .. configManager.getString(configKeys.SERVER_NAME) .. "!"
	if player:getLastLoginSaved() <= 0 then
		loginStr = loginStr .. " Por favor mude de outfit."
		player:sendOutfitWindow()
	else
		if loginStr ~= "" then
			player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
		end

		loginStr = string.format("Sua ultima visita foi has %s.", os.date("%a %b %d %X %Y", player:getLastLoginSaved()))
	end
	player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)

	-- Stamina
	nextUseStaminaTime[player.uid] = 0

	-- Promotion
	local vocation = player:getVocation()
	local promotion = vocation:getPromotion()
	if player:isPremium() then
		local value = player:getStorageValue(STORAGEVALUE_PROMOTION)
		if not promotion and value ~= 1 then
			player:setStorageValue(STORAGEVALUE_PROMOTION, 1)
		elseif value == 1 then
			player:setVocation(promotion)
		end
	elseif not promotion then
		player:setVocation(vocation:getDemotion())
	end

	-- Events
	player:registerEvent("PlayerDeath")
	player:registerEvent("DropLoot")
	player:registerEvent("RewardLoot")
	player:registerEvent("modalAD")
	player:registerEvent("modalMD")
	player:registerEvent("tpw")
	player:registerEvent("DodgeSystem")
	player:registerEvent("CriticalSystem")
	player:registerEvent("Promo20")
    player:registerEvent("AutoLoot")
	player:registerEvent("taskI")
	player:registerEvent("taskII")
	player:registerEvent("taskIII")
	player:registerEvent("taskIV")



-- Critical System
if player:getCriticalLevel() == -1 then
	player:setCriticalLevel(0)
end

-- Dodge System
if player:getDodgeLevel() == -1 then
    player:setDodgeLevel(0)
end
	return true
end
