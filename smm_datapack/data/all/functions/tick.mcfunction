execute if entity @p[scores={RESETMEPLEASE=1..}] run function all:reset_complete
function sounds:tick
function coin_handler:tick
scoreboard players enable @a RESETMEPLEASE
execute as @e[tag=cp1,tag=!acquired] at @s if entity @a[distance=..2,gamemode=!creative,gamemode=!spectator] run function checkpoint:cp1
execute as @e[tag=orb] at @s if entity @a[distance=..1,gamemode=!creative,gamemode=!spectator] run function checkpoint:finish
execute as @e[tag=cp2,tag=!acquired] at @s if entity @a[distance=..2,gamemode=!creative,gamemode=!spectator] run function checkpoint:cp2
execute as @e[tag=red_coin,tag=!acquired,tag=!temp_acq] at @s if entity @a[distance=..1.5,gamemode=!creative,gamemode=!spectator] run function coin_handler:red_coin_get
execute as @e[tag=key,tag=!acquired] at @s if entity @a[distance=..2,gamemode=!creative,gamemode=!spectator] run function coin_handler:key_get
execute as @e[tag=key,tag=!acquired] at @s run particle wax_off ~ ~0.375 ~ .25 .25 .25 2 1 force
execute if entity @p[scores={deathcount=1..}] run function checkpoint:death_handler
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_a] on target run function door_handler:door_a
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_b] on target run function door_handler:door_b
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_c] on target run function door_handler:door_c
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_d] on target run function door_handler:door_d
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_e] on target run function door_handler:door_e
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_f] on target run function door_handler:door_f
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_g] on target run function door_handler:door_g
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_h] on target run function door_handler:door_h
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_i] on target run function door_handler:door_i
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_j] on target run function door_handler:door_j
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_k] on target run function door_handler:door_k
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_l] on target run function door_handler:door_l
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_m] on target run function door_handler:door_m
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_n] on target run function door_handler:door_n
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_o] on target run function door_handler:door_o
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_p] on target run function door_handler:door_p