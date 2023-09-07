function checkpoint:cp1_off
tag @s add acquired
item replace entity @s armor.head with iron_ingot{CustomModelData:2}
particle minecraft:wax_off ~ ~1 ~ .5 .5 .5 2 200 force
playsound minecraft:entity.creeper.death master @a ~ ~ ~ 0.5 1 0.5
spawnpoint @p ~ ~ ~ ~
setblock 0 2 5 chest replace
setblock 0 5 4 chest replace
setblock 0 4 4 hopper[facing=south] replace
data modify block 0 5 4 Items set from entity @p Inventory
function coin_handler:red_coin_finish