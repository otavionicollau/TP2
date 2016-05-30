local config = {
    wand_id = 25421, --ID da wand

    types = {
	["all"] = -1, --Ataca os elementos aleatoriamente
  ["fire"] = 1,
	["ice"] = 2,
	["poison"] = 3,
	["death"] = 4,
	["energy"] = 5,
	["physical"] = 6,
	["holy"] = 7
    }
}

function onSay(cid, words, param)
    local wand_left = getPlayerSlotItem(cid, CONST_SLOT_LEFT).itemid
    local wand_right = getPlayerSlotItem(cid, CONST_SLOT_RIGHT).itemid

    if wand_left ~= config.wand_id and wand_right ~= config.wand_id then
        doPlayerSendCancel(cid, "Voce deve estar equipado com uma ".. getItemNameById(config.wand_id) .." para usar este comando.")
        return true
    end

    if config.types[param] then
        setPlayerStorageValue(cid, 456191, config.types[param])
        doPlayerSendTextMessage(cid, MESSAGE_EVENT_ORANGE, "Sua wand ira atacar ".. param .. ".")
    else
        local str = ""

        for i, _ in pairs(config.types) do
            str = str .. ", ".. i
        end

        doPlayerSendTextMessage(cid, MESSAGE_EVENT_ORANGE, "Os elementos disponiveis sao: ".. string.sub(str, 3, #str) ..".")
    end

    return true
end
