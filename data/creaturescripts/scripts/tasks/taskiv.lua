function onKill(player, target)

local StrongAcesso = 15149
local strong = 252528
local total = 9000
local novapos = {x = 5541, y = 5045, z = 8}

local mosnters = {
["Abyssador III"] =  "",
["Ascending Ferumbras III"] = "",
["Deathstrike III"] = "",
["Dragon Lord III"] = "",
["Warlock III"] = "",
["Deep terror III"] = "",
["Demon III"] = "",
["Devovorga III"] = "",
["Feroxa III"] = "",
["Ferumbras III"] = "",
["Frost dragon III"] = "",
["Gaz'haragoth III"] = "",
["Ghastly dragon III"] = "",
["Ghazbaran III"] = "",
["Grim reaper III"] = "",
["Hydra III"] = "",
["Mawhawk III"] = "",
["Medusa III"] = "",
["Morgaroth III"] = "",
["Obujos III"] = "",
["Omrafir III"] = "",
["Plagirath III"] = "",
["Razzagorn III"] = "",
}

if player:getStorageValue(strong) >= 0 then

  for name, pos in pairs(mosnters) do

       if (name == getCreatureName(target)) then
         if player:getStorageValue(strong) >= total-1 then
             if player:getItemCount(22607) == 0 then
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "VOCE PRECISA DA KEY PARA GANHAR O ACESSO!")
                return false
            else
               player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_BLUE)
               player:sendCancelMessage("PARABENS VOCE CONSEGUIU CONSTISTAR O ACESSO A AREA IV")
               player:setStorageValue(StrongAcesso, 1)
               player:setStorageValue(strong, -1)
               player:removeItem(22607,1)
               doTeleportThing(player,novapos , FALSE)
             end
           else
            player:setStorageValue(strong, player:getStorageValue(strong) + 1)
            player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_RED)
            player:sendCancelMessage("ACESSO IV : Voce matou " .. player:getStorageValue(strong) .." de ".. total .. " monstros")
        end
      end
   end
  end

return true
end
