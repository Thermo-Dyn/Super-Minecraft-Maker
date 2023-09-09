execute as @e[tag=cp1,tag=!acquired] at @s if entity @a[distance=..2,gamemode=!creative,gamemode=!spectator] run function checkpoint:cp1
execute as @e[tag=orb] at @s if entity @a[distance=..1,gamemode=!creative,gamemode=!spectator] run function checkpoint:finish
execute as @e[tag=cp2,tag=!acquired] at @s if entity @a[distance=..2,gamemode=!creative,gamemode=!spectator] run function checkpoint:cp2
execute as @e[tag=red_coin,tag=!acquired,tag=!temp_acq] at @s if entity @a[distance=..1.5,gamemode=!creative,gamemode=!spectator] run function coin_handler:red_coin_get
execute as @e[tag=key] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=red_coin] at @s run tp @s ~ ~ ~ ~10 ~