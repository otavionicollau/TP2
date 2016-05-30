
local types = {
		[1] = {name = "ALEATORY", ID = -1},
		[2] = {name = "FIRE", ID = 1},
		[3] = {name = "ICE", ID = 2},
		[4] = {name = "POISON", ID = 3},
		[5] = {name = "DEATH", ID = 4},
		[6] = {name = "ENERGY", ID = 5},
		[7] = {name = "PHYSICAL", ID = 6},
		[8] = {name = "HOLY", ID = 7},
    }

function onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    player:registerEvent("modalElements")

    local title = "Selecione o elemento!"
    local message = "VOCE MUDARA O ELEMENTO DA STAFF PARA:"
    local window = ModalWindow(1005, title, message)
		window:addButton(100, "Confirm")
		window:setDefaultEnterButton(100)
    window:addButton(101, "Cancel")
    window:setDefaultEscapeButton(101)
    for i = 1, #types do
		local o = types[i].name
			window:addChoice(i, o)
    end
    window:sendToPlayer(player)
    return true
end
