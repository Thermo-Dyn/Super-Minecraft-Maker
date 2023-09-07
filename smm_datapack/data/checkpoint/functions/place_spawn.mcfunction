setblock ~ ~ ~ air
kill @e[tag=spawn]
summon minecraft:armor_stand ~ ~-.5 ~ {Tags:["spawn"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"iron_ingot",Count:1b,tag:{CustomModelData:10}}]}
setworldspawn ~ ~ ~