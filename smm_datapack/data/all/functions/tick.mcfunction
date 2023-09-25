# Check for reset
execute if entity @p[scores={RESETMEPLEASE=1..}] run function all:reset_complete
# Set Health to 1
execute as @a run attribute @s minecraft:generic.max_health base set 1
execute unless entity @p[scores={damage_taken=0..}] run scoreboard players set @p damage_taken 0
execute store success score @a damage_taken as @e[scores={damage_taken=0},type=player] run damage @s 19.99
function sounds:tick
function coin_handler:tick
scoreboard players enable @a RESETMEPLEASE
# Key Collected
execute as @e[tag=key,tag=!acquired] at @s if entity @a[distance=..2,gamemode=!creative,gamemode=!spectator] run function coin_handler:key_get
execute as @e[tag=key,tag=!acquired] at @s run particle wax_off ~ ~0.375 ~ .25 .25 .25 2 1 force
# Death Detector
execute if entity @p[scores={deathcount=1..}] run function checkpoint:death_handler
# Doors
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_a] on target run function door_handler:normal_door {me:door_a, you:door_b}
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_b] on target run function door_handler:normal_door {me:door_b, you:door_a}
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_c] on target run function door_handler:normal_door {me:door_c, you:door_d}
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_d] on target run function door_handler:normal_door {me:door_d, you:door_c}
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_e] on target run function door_handler:normal_door {me:door_e, you:door_f}
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_f] on target run function door_handler:normal_door {me:door_f, you:door_e}
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_g] on target run function door_handler:normal_door {me:door_g, you:door_h}
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_h] on target run function door_handler:normal_door {me:door_h, you:door_g}
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_i] on target run function door_handler:key_door {me:door_i, you:door_j}
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_j] on target run function door_handler:key_door {me:door_j, you:door_i}
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_k] on target run function door_handler:key_door {me:door_k, you:door_l}
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_l] on target run function door_handler:key_door {me:door_l, you:door_k}
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_m] on target run function door_handler:key_door {me:door_m, you:door_n}
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_n] on target run function door_handler:key_door {me:door_n, you:door_m}
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_o] on target run function door_handler:key_door {me:door_o, you:door_p}
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=door_p] on target run function door_handler:key_door {me:door_p, you:door_o}