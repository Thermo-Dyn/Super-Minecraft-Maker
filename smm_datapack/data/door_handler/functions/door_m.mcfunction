execute if entity @s[gamemode=creative] run give @s minecraft:iron_ingot{CustomModelData:5} 1
execute if entity @s[gamemode=spectator] run give @s minecraft:iron_ingot{CustomModelData:5} 1
execute unless entity @e[tag=door_m,tag=unlocked] store success score @s used_key run clear @s minecraft:iron_ingot{CustomModelData:5} 1
execute if entity @s[scores={used_key=1}] run effect give @s minecraft:blindness 1 0 true
execute if entity @s[scores={used_key=1}] run tag @e[tag=door_m] add unlocked
execute if entity @s[scores={used_key=1}] run tag @e[tag=door_n] add unlocked
execute if entity @s[scores={used_key=1}] at @e[type=minecraft:interaction,tag=door_n,limit=1] run function door_handler:keydoor
execute if entity @e[tag=unlocked,tag=door_m] at @e[type=minecraft:interaction,tag=door_n,limit=1] run function door_handler:keydoor
scoreboard players set @s used_key 0
data remove entity @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_m,limit=1] interaction
execute if entity @s[scores={used_key=1}] run effect give @s minecraft:blindness 1 0 true
execute if entity @s[scores={used_key=1}] run playsound minecraft:block.wooden_door.open master @p ~ ~ ~ 1 0.75
execute if entity @e[tag=unlocked,tag=door_m] at @e[type=minecraft:interaction,tag=door_n,limit=1] run function door_handler:keydoor
execute if entity @e[tag=unlocked,tag=door_m] at @e[type=minecraft:interaction,tag=door_n,limit=1] run effect give @s minecraft:blindness 1 0 true
execute if entity @e[tag=unlocked,tag=door_m] at @e[type=minecraft:interaction,tag=door_n,limit=1] run playsound minecraft:block.wooden_door.open master @p ~ ~ ~ 1 0.75