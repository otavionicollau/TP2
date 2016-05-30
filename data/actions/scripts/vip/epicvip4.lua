function onUse(cid, item, fromPosition, itemEx, toPosition)

local config={
removeOnUse = "yes" -- remover quando usar ("yes" or "no")
}

local days = 3000 -- dias que serão adicionados
local daysvalue = days * 24 * 60 * 60
local storageplayer = getPlayerStorageValue(cid, 22526)
local timenow = os.time()

if getPlayerStorageValue(cid, 22526) - os.time() <= 0 then
time = timenow + daysvalue
else
time = storageplayer + daysvalue
end

doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Agóra você é vip2!")
setPlayerStorageValue(cid, 22526, time)
local quantity = math.floor((getPlayerStorageValue(cid, 22526) - timenow)/(24 * 60 * 60))
doSendMagicEffect(getPlayerPosition(cid), math.random(28,30))
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Agóra você é vip2!.")
if (config.removeOnUse == "yes") then
doRemoveItem(item.uid, 1)
end

return TRUE
end 