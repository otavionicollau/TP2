local query = db.query or db.executeQuery

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if not getTilePzInfo(getThingPos(cid)) then
		doPlayerSendCancel(cid, "{SellPoints System} Voc� precisa estar em protectzone.")
		return true
	end
	if getItemAttribute(item.uid, "pontos") and tonumber(getItemAttribute(item.uid, "pontos")) then
		local points = tonumber(getItemAttribute(item.uid, "pontos"))
		if doRemoveItem(item.uid) then
			query("UPDATE `accounts` SET `premium_points` = `premium_points` + '"..points.."' WHERE `id` = '"..getPlayerAccountId(cid).."'")
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "{SellPoints System} Voc� recebeu "..points.." PPTS!")
			doSendMagicEffect(getThingPos(cid), 28)
			doPlayerPopupFYI(cid, "{SellPoints System} Voc� vai ser kikado em 2 segundos.")
			addEvent(doRemoveCreature, 2000, cid)
		end
	else
		doPlayerSendCancel(cid, "Este documento n�o vale nenhum ponto.")
	end
	return true
end