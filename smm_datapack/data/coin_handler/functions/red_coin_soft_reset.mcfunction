execute as @e[tag=temp_acq,tag=red_coin] run item replace entity @s armor.head with iron_ingot{CustomModelData:4}
execute as @e[tag=acquired,tag=key] run item replace entity @s armor.head with iron_ingot{CustomModelData:5}
tag @e[tag=temp_acq] remove temp_acq
tag @e[tag=acquired,tag=key] remove acquired
tag @e[tag=reset] remove acquired
execute as @e[tag=reset,tag=red_coin] run item replace entity @s armor.head with iron_ingot{CustomModelData:4}
tag @e[tag=reset] remove reset