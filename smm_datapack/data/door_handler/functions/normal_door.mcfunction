effect give @s minecraft:blindness 1 0 true
$execute at @e[type=minecraft:interaction,tag=$(you)] run tp @s ^ ^ ^.5 ~ ~
$data remove entity @e[type=minecraft:interaction,nbt={interaction:{}},tag=$(me),limit=1] interaction
playsound minecraft:block.wooden_door.open master @p ~ ~ ~ 1 0.75 1
