setblock ~ ~ ~ air
$summon minecraft:item_display ~ ~.25 ~ {Tags:[$(me)],item:{id:"minecraft:iron_ingot",Count:1s,tag:{CustomModelData:7}}}
$summon minecraft:interaction ~ ~-.5 ~ {Tags:[$(me)],width:1.25f,height:2.25f}