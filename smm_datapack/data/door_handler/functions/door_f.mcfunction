effect give @s minecraft:blindness 1 0 true
playsound minecraft:block.wooden_door.open master @p ~ ~ ~ 1 0.75 1
execute at @e[type=minecraft:interaction,tag=door_e] run tp @s ^ ^ ^.5 ~ ~
data remove entity @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_f,limit=1] interaction