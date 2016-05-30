--[[Script By Vodkart]]-- 
function onStepIn(cid, item, position, fromPosition) 
--[[ 
Nome do monstros, Coordenada de onde ele irá ser sumonado. 
Pode adicionar mais monstro caso assim desejar. 
--]] 
local M = {  
[1] = {"trava",{x=2296, y=2277, z=7}},  
[2] = {"Orshabaal",{x=2287, y=2273, z=7}}, 
[3] = {"Juggernaut",{x=2285, y=2276, z=7}}, 
[4] = {"Juggernaut",{x=2287, y=2279, z=7}},
[5] = {"Juggernaut",{x=2293, y=2274, z=7}},
[6] = {"Juggernaut",{x=2294, y=2279, z=7}},
[7] = {"Juggernaut",{x=2291, y=2280, z=7}},
[8] = {"Juggernaut",{x=2290, y=2270, z=7}}  
}  
 
local storage = 13311 -- n mexa 
local time_summon = 10 -- intervalo de tempo em minutos para nao summonar novamente 
 
if not isPlayer(cid) then
return FALSE
elseif getGlobalStorageValue(storage) >= os.time() then 
return FALSE
end
for i = 1, #M do  
doCreateMonster(M[i][1], M[i][2]) 
end 
doCreatureSay(cid, "Tibia WID Wellcome Apocalpyse Quest!", 19)  
setGlobalStorageValue(storage, os.time()+time_summon*60)   
return TRUE  
end