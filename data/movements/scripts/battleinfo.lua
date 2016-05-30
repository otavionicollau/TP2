function onStepIn(cid, item, position, fromPosition)

local config = {
msgWelcome = "Digite !battleinfo para saber mais sobre o evento!"
}
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.msgWelcome)
return TRUE
end