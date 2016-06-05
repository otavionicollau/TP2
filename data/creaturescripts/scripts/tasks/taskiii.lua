function onKill(player, target)

local StrongAcesso = 15149
local strong = 252527
local total = 6000
local novapos = {x = 5639, y = 4974, z = 7}

local mosnters = {
["Abyssador II"] =  "",
["Ascending Ferumbras II"] = "",
["Deathstrike II"] = "",
["Dragon Lord II"] = "",
["Warlock II"] = "",
["Deep terror II"] = "",
["Demon II"] = "",
["Devovorga II"] = "",
["Feroxa II"] = "",
["Ferumbras II"] = "",
["Frost dragon II"] = "",
["Gaz'haragoth II"] = "",
["Ghastly dragon II"] = "",
["Ghazbaran II"] = "",
["Grim reaper II"] = "",
["Hydra II"] = "",
["Mawhawk II"] = "",
["Medusa II"] = "",
["Morgaroth II"] = "",
["Obujos II"] = "",
["Omrafir II"] = "",
["Plagirath II"] = "",
["Razzagorn II"] = ""

}

if player:getStorageValue(strong) >= 0 then

  for name, pos in pairs(mosnters) do

       if (name == getCreatureName(target)) then
         if player:getStorageValue(strong) >= total-1 then
             if player:getItemCount(22606) == 0 then
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "VOCE PRECISA DA KEY PARA GANHAR O ACESSO!")
                return false
            else
               player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_BLUE)
               player:sendCancelMessage("PARABENS VOCE CONSEGUIU CONSTISTAR O ACESSO A AREA III")
               player:setStorageValue(StrongAcesso, 1)
               player:setStorageValue(strong, -1)
               player:removeItem(22606,1)
               doTeleportThing(player,novapos , FALSE)
             end
           else
             player:setStorageValue(strong, player:getStorageValue(strong) + 1)
             player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_RED)
             player:sendCancelMessage("ACESSO III : Voce matou " .. player:getStorageValue(strong) .." de ".. total .. " monstros")
          end
         end
       end
  end

return true
end
