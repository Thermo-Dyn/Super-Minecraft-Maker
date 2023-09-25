forceload add 0 0
place template all:startup 0 0 0
scoreboard objectives add died minecraft.custom:minecraft.time_since_death
scoreboard objectives add deathcount deathCount
scoreboard objectives add red_coins dummy
scoreboard objectives add used_key dummy
scoreboard objectives add just_used_key dummy
scoreboard objectives add door_success dummy
scoreboard objectives add RESETMEPLEASE trigger
scoreboard players enable @a RESETMEPLEASE
scoreboard objectives add max_red_coins dummy
scoreboard objectives add music dummy
scoreboard objectives add damage_taken dummy
scoreboard players set @a sound 0
kill @e[tag=max_red_coins]
summon armor_stand 0 0 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["max_red_coins"]}
scoreboard players set @e[tag=max_red_coins] max_red_coins 8
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule doTraderSpawning false
gamerule doInsomnia false
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule spawnRadius 0
gamerule keepInventory true
gamerule logAdminCommands false
gamerule doImmediateRespawn true