execute at @a[scores={music=1..}] if entity @e[tag=sound_off,distance=..3,tag=!temp_acq,tag=!acquired] as @p run scoreboard players set @a music 0
execute at @a[scores={music=1..}] if entity @e[tag=sound_off,distance=..3,tag=!temp_acq,tag=!acquired] as @p run stopsound @s master
execute at @a[scores={music=0}] if entity @e[tag=slider,distance=..2,tag=!temp_acq,tag=!acquired] as @p run function sounds:slider 
execute at @a[scores={music=0}] if entity @e[tag=kart,distance=..2,tag=!temp_acq,tag=!acquired] as @p run function sounds:kart
execute at @a[scores={music=0}] if entity @e[tag=gusty,distance=..2,tag=!temp_acq,tag=!acquired] as @p run function sounds:gusty
execute at @a[scores={music=0}] if entity @e[tag=boowomp,distance=..2,tag=!temp_acq,tag=!acquired] as @p run function sounds:boowomp
execute at @a[scores={music=0}] if entity @e[tag=boing,distance=..2,tag=!temp_acq,tag=!acquired] as @p run function sounds:boing
execute at @a[scores={music=0}] if entity @e[tag=metal_pipe,distance=..2,tag=!temp_acq,tag=!acquired] as @p run function sounds:metal_pipe
# Add any custom sounds here:


scoreboard players remove @a[scores={music=1..}] music 1