local position_of_wall = {x = 2130, y = 2102, z = 7	}
local wall_item_id = 8538

function onUse(cid, item, fromPosition, itemEx, toPosition)
        if item.itemid == 1945 then
                local wall = getTileItemById(position_of_wall, wall_item_id)
                if wall.uid > 0 then
                        addEvent(function()
                                doTransformItem(item.uid, 1945)
								doCreatureSay(cid, "[Wid Hell Quest] Primeira pedra foi colocada no local de origem!", 19)  
                                doCreateItem(wall_item_id, position_of_wall)
                        end, 600 * 1000)
                        doRemoveItem(wall.uid, 1)
						doCreatureSay(cid, "[Wid Hell Quest] Primeira pedra removida voce tem 10 minutos para puxar as outras lavancas!", 19)  
                        doTransformItem(item.uid, 1945)
                end
        elseif item.itemid == 1945 then
                doPlayerSendCancel(cid, "Voce tem 10 minutos para puxar as outras lavancas !")
        end
        return true
end