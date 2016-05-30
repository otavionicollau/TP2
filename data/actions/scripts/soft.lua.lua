function onUse(cid, item, fromPosition, itemEx, toPosition) 

-- Itens configuravéis. 
local t = {money = 10000, item = 10021, newitem = 2640} 

  if getPlayerItemCount(cid,t.item,1) then 
  if PlayerRemoveMoney(cid,t.money) then 
    doPlayerRemoveItem(cid,t.item,1) 
    doPlayerAddItem(cid,t.newitem,1)     
    doSendMagicEffect(fromPosition, CONST_ME_POFF) 
    doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You got a brand new pair of soft boots.") 
  else 
    doPlayerSendCancel(cid, "Sorry, is not possible.") 
  end 
  else 
    doPlayerSendCancel(cid, "Sorry, you need a " .. t.money .. " gold pieces.") 
  end 
  end 
 return true 
end