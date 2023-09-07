tag @s add temp_acq
item replace entity @s armor.head with air
particle minecraft:wax_off ~ ~0 ~ .25 .25 .25 2 20 force
playsound minecraft:block.note_block.bell master @p ~ ~ ~ 1 1.25 1
give @p minecraft:iron_ingot{CustomModelData:4,display:{Name:'[{"text":"Red Coin","italic":false,"color":"red"}]'}}
scoreboard players add @p red_coins 1

execute if score @p red_coins >= @e[tag=max_red_coins,limit=1] max_red_coins run function coin_handler:red_coin_key
