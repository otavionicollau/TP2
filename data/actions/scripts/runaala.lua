function getItemCap(itemid, quant) -- function by MatheusMkalo
    return getItemInfo(itemid).weight*(quant or 1)
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
    local configs = {
    [8883] = {itemid = 10943, quantperslot = 1, cost = 6000000, backpackid = 10518},
    [8884] = {itemid = 12574, quantperslot = 1, cost = 6000000, backpackid = 10518},
    [8885] = {itemid = 7959, quantperslot = 1, cost = 6000000, backpackid = 10518},
    [8886] = {itemid = 12391, quantperslot = 1, cost = 6000000, backpackid = 10518},
    [8887] = {itemid = 7735, quantperslot = 1, cost = 6000000, backpackid = 10518},
    [8888] = {itemid = 2112, quantperslot = 1, cost = 5000000, backpackid = 10518},
    [8889] = {itemid = 5468, quantperslot = 1, cost = 10000000, backpackid = 10518},
    [9000] = {itemid = 12647, quantperslot = 1, cost = 5000000, backpackid = 10522},
    [9001] = {itemid = 12644, quantperslot = 1, cost = 5000000, backpackid = 10522},
    [9002] = {itemid = 7415, quantperslot = 1, cost = 5000000, backpackid = 10522},
    [9003] = {itemid = 7391, quantperslot = 1, cost = 5000000, backpackid = 10522},
    [9004] = {itemid = 7434, quantperslot = 1, cost = 5000000, backpackid = 10522},
    [9005] = {itemid = 12648, quantperslot = 1, cost = 5000000, backpackid = 10522},
    [9006] = {itemid = 2352, quantperslot = 1, cost = 5000000, backpackid = 10522},
    }
    local coinid = 9971 -- Use o id da gold coin (2148) se voce quizer usar o sistema de dinheiro mesmo. (Caso o itemid for 2148 o cost sera de gps ou seja 30 = 30 gps)
    
    if configs[item.actionid] then
        if getPlayerFreeCap(cid) >= math.ceil((getItemCap(configs[item.actionid].itemid, configs[item.actionid].quantperslot)*20)+getItemCap(configs[item.actionid].backpackid)) then
            if coinid ~= 2148 and getPlayerItemCount(cid, coinid) >= configs[item.actionid].cost or doPlayerRemoveMoney(cid, configs[item.actionid].cost) then
                local backpack = doPlayerAddItem(cid, configs[item.actionid].itemid)
                doPlayerRemoveItem(cid, coinid == 2148 and 0000 or coinid, configs[item.actionid].cost)
                        doSendMagicEffect(fromPosition, CONST_ME_GIFT_WRAPS)
                        doSendAnimatedText(fromPosition, "Comprado", TEXTCOLOR_RED)
            else
                doCreatureSay(cid, "Ops, não tenho a grana!", TALKTYPE_ORANGE_1)
            end
        else
            return doPlayerSendCancel(cid, "You need " .. math.ceil((getItemCap(configs[item.actionid].itemid, configs[item.actionid].quantperslot)*20)+getItemCap(configs[item.actionid].backpackid)) .. " cap for buy that.")
        end
    end
return TRUE
end
