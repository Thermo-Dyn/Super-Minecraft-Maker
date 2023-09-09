stopsound @a master
scoreboard players set @a music 0
playsound troll:main.death master @a ~ ~ ~ 1 1 1
execute as @e[gamemode=!creative,gamemode=!spectator,type=player] run clear @a
scoreboard players set @a deathcount 0
execute as @e[gamemode=!creative,gamemode=!spectator,type=player] run item replace entity @a container.0 from block 0 2 5 container.0
function coin_handler:red_coin_soft_reset
execute as @e[tag=unlocked] run data modify entity @s item.tag.CustomModelData set value 7
execute as @e[tag=unlocked] run tag @s remove unlocked
execute store result score @a red_coins run data get block 0 2 5 Items[0].Count