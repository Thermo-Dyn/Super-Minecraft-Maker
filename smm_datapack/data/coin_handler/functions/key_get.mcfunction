tag @s add acquired
item replace entity @s armor.head with air
particle minecraft:wax_on ~ ~0 ~ .25 .25 .25 2 20 force
playsound minecraft:block.note_block.chime master @p ~ ~ ~ 1 .75 1
give @p iron_ingot{CustomModelData:5,display:{Name:'[{"text":"Key","italic":false,"color":"yellow","bold":true}]'}}

