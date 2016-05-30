function onStepIn(cid, item, position, fromPosition)
	if getPlayerLevel(cid) >= 150 then
		doPlayerSetStorageValue(cid, 822066, 1)
		setGlobalStorageValue(822066, getStorageZero(822066) + 1)
		doPlayerSendTextMessage(cid, 25, "Voc� entrou na sala de espera do evento Capture a Bandeira. Aguarde aqui at� o evento iniciar.")
		doTeleportThing(cid, CTF.waitingRoom)
	else
		doPlayerSendCancel(cid, "Voc� deve ser level 150 ou mais para entrar no CTF.")
		return false
	end
	return true
end