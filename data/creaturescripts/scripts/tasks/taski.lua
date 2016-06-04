function onKill(player, target)

local StrongAcesso = 15149
local strong = 252525
local total = 1000

local novapos = {x = 1028, y = 1034, z = 7}

local mosnters = {
["Demon"] =  "",
["Hydra"] = "",
["Frost Dragon"] = "",
["Dragon Lord"] = "",
["Warlock"] = "",
["Dragon"] = "",
["Serpent Spawn"] = "",
["Behemoth"] = "",
["Cyclops"] = "",
["Hellhound"] = "",
["Fluffy"] = "",
["Nightmare"] = "",
["Destroyer"] = "",
["Undead Dragon"] = "",
["Betrayed Wraith"] = "",
["Dark Torturer"] = "",
["Lost Soul"] = "",
["Lost Soul"] = "",
["Orshabaal"] = "",
["Grim Reaper"] = "",
["Demodras"] = "",
["Wyrm"] = "",
["Thul"] = "",
["Defiler"] = "",
["Hero"] = "",
["Black Knight"] = "",
["Medusa"] = "",
["Werewolf"] = "",
["Spectre"] = "",
["Plaguesmith"] = "",
["Eternal Guardian"] = "",
["Draken Elite"] = "",
["Draken Warmaster"] = "",
["Lizard Chosen"] = "",
["Draken Abomination"] = "",
["The Old Widow"] = "",
["Ferumbras"] = "",
["Ghazbaran"] = "",
["Juggernaut"] = "",
["Morgaroth"] = "",
["Massacre"] = "",
["Infernalist"] = "",
["Annihilon"] = "",
["Mr. Punish"] = ""
}

 if player:getStorageValue(strong) >= 0 then

   for name, pos in pairs(mosnters) do

        if (name == getCreatureName(target)) then
          if player:getStorageValue(strong) >= total then
            player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_BLUE)
            player:sendCancelMessage("PARABENS VOCE CONSEGUIU CONSTISTAR O ACESSO A AREA I")
            player:setStorageValue(StrongAcesso, 1)
            player:setStorageValue(strong, -1)
            doTeleportThing(player,novapos , FALSE)
          end

            player:setStorageValue(strong, player:getStorageValue(strong) + 1)
            player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_RED)
            player:sendCancelMessage("ACESSO I : Voce matou " .. player:getStorageValue(strong) .." de ".. total .. " monstros")
          end
        end
   end

 return true
end
