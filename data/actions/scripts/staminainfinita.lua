function onUse(cid, item, fromPosition, itemEx, toPosition)
	local cfg = {}
	cfg.refuel = 42 * 60 * 1000
	if(getPlayerStamina(cid) >= cfg.refuel) then
		doPlayerSendCancel(cid, "Chega de comer bolo rapaz!")
	else
		doPlayerSetStamina(cid, cfg.refuel)
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Sua stamina foi regenerada!")
	end
	return true
end