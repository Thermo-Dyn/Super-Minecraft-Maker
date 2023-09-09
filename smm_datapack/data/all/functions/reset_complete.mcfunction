clear @a
tag @e[tag=reset] remove acquired
execute as @e[tag=reset,tag=red_coin] run item replace entity @s armor.head with iron_ingot{CustomModelData:4}
kill @e[tag=max_red_coins]
function all:startup
function checkpoint:death_handler
execute as @e[tag=spawn,limit=1] at @s run function checkpoint:reset_spawn
scoreboard players reset @p red_coins
scoreboard players reset @p RESETMEPLEASE