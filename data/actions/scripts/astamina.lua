function onUse(cid, item, frompos, item2, topos)
	doPlayerAddStamina(cid, 2520)
	doSendMagicEffect(frompos, 1)
	doRemoveItem(item.uid, 1)	
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sua stamina foi Recuperada.")
return 1
end