function onStepIn(cid, item, pos)



-- teleports config
teleport1 ={x=1977, y=1859, z=9}





if isPlayer(cid) then

if item.actionid == 7527 then

vip = getPlayerStorageValue(cid,7527)
if vip == -1 then
doPlayerSendCancel(cid,"Esta �rea � exclusiva para players VipFree, para ser um Vipfree fa�a a Quest no templo.")


doTeleportThing(cid,teleport1)


else

end

end

end

end
