local effects = {
    {position = Position(159, 49, 7), text = 'Bonus Diario!', effect = 32},
    {position = Position(281, 254, 8), text = 'TP Room'}, -- text only
    {position = Position(153, 46, 7), text = 'Monstros!', effect = 72},
    {position = Position(151, 46, 7), text = 'Quests!', effect = 41},
    {position = Position(160, 45, 7), text = '', effect = 62},
    {position = Position(164, 44, 7), text = '', effect = 42},
    {position = Position(168, 44, 7), text = '', effect = 46},
    {position = Position(172, 44, 7), text = '', effect = 47},
    {position = Position(176, 44, 7), text = '', effect = 40},
    {position = Position(162, 45, 7), text = '', effect = 62},
    {position = Position(161, 45, 7), text = 'AREA EXCLUSIVA P/ DONATE!!', effect = 62},
    {position = Position(167, 47, 7), text = 'AREA II', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(171, 47, 7), text = 'AREA III', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(164, 46, 7), text = 'AREA I', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(175, 47, 7), text = 'AREA IV', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(307, 254, 1), text = 'EVENTOS!', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(146, 49, 7), text = 'Trainers OFF!', effect = 57},
    {position = Position(146, 49, 7), text = '', effect = 48},
    {position = Position(163, 51, 7), text = 'NPCS', effect = 49},
    {position = Position(149, 46, 7), text = 'Trainers ON!', effect = 50},
}

function onThink(interval)
    for i = 1, #effects do
        local settings = effects[i]
        local spectators = Game.getSpectators(settings.position, false, true, 7, 7, 5, 5)
        if #spectators > 0 then
            if settings.text then
                for i = 1, #spectators do
                    spectators[i]:say(settings.text, TALKTYPE_MONSTER_SAY, false, spectators[i], settings.position)
                end
            end
            if settings.effect then
                settings.position:sendMagicEffect(settings.effect)
            end
        end
    end
   return true
end
