--[[
   Script by LukazGiovanni
]]--

local cfgItems = {{5791, 1}}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(5791) and player:getStorageValue(15134) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Voce ja escolheu a sua recompensa.")
    elseif player:getStorageValue(15134) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Voce achou um Stuffed Dragon.")
         
        local bag = player:addItem(1993) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(15134, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Voce ja pegou sua recompensa.")
       end
end
