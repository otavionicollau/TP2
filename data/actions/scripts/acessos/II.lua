
local qtdTotal = 3000
local strong = 252526


function onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)

      player:registerEvent("modalTaskII")


       if player:getStorageValue(strong) >= 0 then

        local title = "ACESSO A AREA II"
        local message = "                     RELATORIO GERAL \n\n\n ATUAL: ".. player:getStorageValue(strong) .." MONSTROS MORTOS.                         \n\n RESTANTES: ".. qtdTotal-player:getStorageValue(strong) .." MOSNTROS.             "
        local window = ModalWindow(1007, title, message)
        window:addButton(101, "Cancel")
        window:setDefaultEscapeButton(101)
        window:sendToPlayer(player)
        return true

      else
        local title = "ACESSO A AREA II"
        local message = "     VOCE NAO E DIGNO DE ACESSAR A AREA I, \n SE VOCE QUE SE TORNAR DIGNO, E PRECISO QUE VOCE MOSTRE O SEU VALOR! \n DERROTE ( ".. qtdTotal .." ) MONSTROS PARA TER ACESSO EXCLUSIVO A AREA I.\n\n OQUE A AREA I TEM? \n * MAIS DE 20 MONSTROS EDITADOS \n * MAIS DE 30 TPS \n * QUESTs EXCLUSIVAS \n * NPCs EXCLUSIVOS \n\n PARA ACEITAR O DESAFIO PRESSIONE O BUTTON CONFIRME!"
        local window = ModalWindow(1007, title, message)
        window:addButton(100, "Confirm")
        window:setDefaultEnterButton(100)
        window:addButton(101, "Cancel")
        window:setDefaultEscapeButton(101)
        window:sendToPlayer(player)
        return true
      end


end
