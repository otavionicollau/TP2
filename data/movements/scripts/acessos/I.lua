function onStepIn(cid, item, position, fromPosition)
	local storage = 15149
	if getPlayerStorageValue(cid, storage) <= 0 then
		doPlayerSendCancel(cid, 'Voce nao tem acesso a Area I.')
		doTeleportThing(cid, fromPosition)
	end
	return true
end
