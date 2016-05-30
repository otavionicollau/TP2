
function onUse(cid, item, fromPosition, item2, toPosisition) 

local config={
RemoveOnUse = "yes" -- remover o item ao usar ("yes" or "no") 
}

if getCreatureSkullType(cid) == SKULL_RED then
db.executeQuery("UPDATE `killers` SET `unjustified` = 0 WHERE `id` IN (SELECT `kill_id` FROM `player_killers` WHERE `player_id` = " .. getPlayerGUID(cid) .. ")") 
doCreatureSetSkullType(cid, 0) 
doCreatureSay(cid, "Seus frags e seu Redskull foram removidos!", 19) 
doSendMagicEffect(getPlayerPosition(cid), 13)
if (config.RemoveOnUse == "yes") then 
doRemoveItem(item.uid, 1)
end
else
doPlayerSendCancel(cid,"Você não possui o item ou não está redskull.") 
doSendMagicEffect(getPlayerPosition(cid), 2) 
end 
return TRUE
end