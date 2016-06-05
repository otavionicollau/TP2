function onKill(player, target)

local StrongAcesso = 15148
local strong = 252526
local total = 10
local novapos = {x = 5552, y = 4819, z = 6}

local mosnters = {
["Abyssador I"] =  "",
["Ascending Ferumbras I"] = "",
["Deathstrike I"] = "",
["Dragon Lord I"] = "",
["Warlock I"] = "",
["Deep terror I"] = "",
["Demon I"] = "",
["Devovorga I"] = "",
["Feroxa I"] = "",
["Ferumbras I"] = "",
["Frost dragon I"] = "",
["Gaz'haragoth I"] = "",
["Ghastly dragon I"] = "",
["Ghazbaran I"] = "",
["Grim reaper I"] = "",
["Hydra I"] = "",
["Mawhawk I"] = "",
["Medusa I"] = "",
["Morgaroth I"] = "",
["Obujos I"] = "",
["Omrafir I"] = "",
["Plagirath I"] = "",
["Razzagorn I"] = ""

}

if player:getStorageValue(strong) >= 0 then

  for name, pos in pairs(mosnters) do

       if (name == getCreatureName(target)) then
         if player:getStorageValue(strong) >= total-1 then

           if player:getItemCount(22605) == 0 then
       				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "VOCE PRECISA DA KEY PARA GANHAR O ACESSO!")
       				return false
     			else
             player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_BLUE)
             player:sendCancelMessage("PARABENS VOCE CONSEGUIU CONSTISTAR O ACESSO A AREA II")
             player:setStorageValue(StrongAcesso, 1)
             player:setStorageValue(strong, -1)
             player:removeItem(22605,1)
             doTeleportThing(player,novapos , FALSE)
           end

         else
            player:setStorageValue(strong, player:getStorageValue(strong) + 1)
            player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_RED)
            player:sendCancelMessage("ACESSO II : Voce matou " .. player:getStorageValue(strong) .." de ".. total .. " monstros")
            end
         end
       end
  end

return true
end
