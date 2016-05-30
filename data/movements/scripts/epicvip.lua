function onStepIn(cid, item, position, fromPosition)


local config = {

msgDenied = "Sómente Players VIP podem entrar, compre a sua agóra mesmo em nosso site: Mouh-war.sytes.net",

msgWelcome = "Seja Bem Vindo a Area vip."
}

local pos = {x = 160, y = 54, z = 7}

if getPlayerStorageValue(cid, 23510) - os.time() <= 0 then

doTeleportThing(cid, pos)

doPlayerPopupFYI(cid, config.msgDenied)

doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
return TRUE
end

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.msgWelcome)
return TRUE
end