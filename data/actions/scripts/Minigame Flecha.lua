function onUse(cid, item, fromPosition, itemEx, toPosition)
	local game
	if item.actionid == 4619 then
		game = MiniGame:new({cid = cid, playerPos = {x = 5434, y = 48, z = 7}, birdPos = {x = 5429, y = 48, z = 7}, fromPos = {x = 5429, y = 44, z = 7}, toPos = {x = 5434, y = 52, z = 7}})
		game:Start(1)
	elseif item.actionid == 4620 then
		game = MiniGame:new({cid = cid, playerPos = {x = 5434, y = 58, z = 7}, birdPos = {x = 5429, y = 58, z = 7}, fromPos = {x = 5429, y = 54, z = 7}, toPos = {x = 5434, y = 62, z = 7}})
		game:Start(2)
	elseif item.actionid == 4621 then
		game = MiniGame:new({cid = cid, playerPos = {x = 5434, y = 68, z = 7}, birdPos = {x = 5429, y = 68, z = 7}, fromPos = {x = 5429, y = 64, z = 7}, toPos = {x = 5434, y = 72, z = 7}})
		game:Start(3)
	elseif item.actionid == 4622 then
		game = MiniGame:new({cid = cid, playerPos = {x = 5446, y = 48, z = 7}, birdPos = {x = 5441, y = 48, z = 7}, fromPos = {x = 5441, y = 44, z = 7}, toPos = {x = 5446, y = 52, z = 7}})
		game:Start(4)
	elseif item.actionid == 4623 then
		game = MiniGame:new({cid = cid, playerPos = {x = 5446, y = 58, z = 7}, birdPos = {x = 5441, y = 58, z = 7}, fromPos = {x = 5441, y = 54, z = 7}, toPos = {x = 5446, y = 62, z = 7}})
		game:Start(5)
	elseif item.actionid == 4624 then
		game = MiniGame:new({cid = cid, playerPos = {x = 5446, y = 68, z = 7}, birdPos = {x = 5441, y = 68, z = 7}, fromPos = {x = 5441, y = 64, z = 7}, toPos = {x = 5446, y = 72, z = 7}})
		game:Start(6)
	end
	return true
end
