function onUse(cid, item, fromPosition, itemEx, toPosition)

local days,removeOnUse = 30,true

local daysvalue = days * 24 * 60 * 60
local storageplayer = getPlayerStorageValue(cid, 23510)
local timenow = os.time()
local time = getPlayerStorageValue(cid, 23510) - os.time() <= 0 and timenow + daysvalue or storageplayer + daysvalue

doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Foram adicionados ".. days .." dias de VIP no seu character.")
setPlayerStorageValue(cid, 23510, time)
local quantity = math.floor((getPlayerStorageValue(cid, 23510) - timenow)/(24 * 60 * 60))
doSendMagicEffect(getPlayerPosition(cid), math.random(28,30))
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você tem ".. quantity .." dias de VIP restantes.")
if removeOnUse == true then doRemoveItem(item.uid, 1) end
return true
end