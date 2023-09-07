clear @a
function all:startup
function checkpoint:death_handler
execute as @e[tag=spawn,limit=1] at @s run function checkpoint:reset_spawn
scoreboard players reset @p red_coins
scoreboard players reset @p RESETMEPLEASE