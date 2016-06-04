local effects = {
    {position = Position(159, 49, 7), text = 'BONUS', effect = 32},
    {position = Position(281, 254, 8), text = 'TP Room'}, -- text only
    {position = Position(153, 46, 7), text = 'Monters', effect = 40},
    {position = Position(151, 46, 7), text = 'Quests', effect = 41},
    {position = Position(160, 45, 7), text = '', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(164, 44, 7), text = '', effect = 42},
    {position = Position(168, 44, 7), text = '', effect = 46},
    {position = Position(172, 44, 7), text = '', effect = 47},
    {position = Position(176, 44, 7), text = '', effect = 40},
    {position = Position(162, 45, 7), text = '', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(161, 45, 7), text = 'Area somente Donate!!', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(167, 47, 7), text = 'Acesso II', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(171, 47, 7), text = 'Acesso III', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(164, 46, 7), text = 'Acesso I', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(175, 47, 7), text = 'Acesso IV', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(307, 254, 1), text = 'Event', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(146, 49, 7), text = 'Treiner Offine', effect = CONST_ME_GROUNDSHAKER},
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
