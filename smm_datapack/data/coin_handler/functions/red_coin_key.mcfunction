clear Thermo_DynAmics minecraft:iron_ingot{CustomModelData:4}
give @p iron_ingot{CustomModelData:5,display:{Name:'[{"text":"Key","italic":false,"color":"yellow","bold":true}]'}}
scoreboard players set @p red_coins 0
playsound minecraft:item.lodestone_compass.lock master @p ~ ~ ~ 1 1 1
xp add @p 5 levels
xp set @p 0 levels
setblock 0 -2 1 chest replace
setblock 0 2 5 chest replace
tag @e[tag=red_coin] add reset