function onUse(player, item, frompos, item2, topos)

if item.uid == 17001 then
    queststatus = getPlayerStorageValue(cid,3000)
    if queststatus == -1 then
player:sendTextMessage(cid,22,"Você ganhou Full Addons!")
--addon 1
doPlayerAddOutfit(cid,335,1)
doPlayerAddOutfit(cid,335,1)
doPlayerAddOutfit(cid,136,1)
-- addon 2
doPlayerAddOutfit(cid,335,2)
doPlayerAddOutfit(cid,335,2)
doPlayerAddOutfit(cid,136,2)

if player:getStorageValue(cid,3000,1)
    else
player:sendTextMessage(cid,22,"Você já pegou seus addons!.")
    end
end
-- by TDDF1995
end