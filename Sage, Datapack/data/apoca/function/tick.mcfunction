## >> From: apoca:init, apoca:tick
## >> At: None
## >> As: Server
## >> Does: Run global loops
## >> Input: None
# Loop
schedule function apoca:tick 1
# Run mob effects
execute as @e[type=#apoca:zombie] at @s run function apoca:loop/zombie
execute as @e[type=#apoca:skeleton] at @s run function apoca:loop/skeleton
execute as @e[type=#apoca:spider] at @s run function apoca:loop/spider
execute as @e[type=creeper,nbt=!{Fuse:0s},nbt=!{ignited:true}] at @s run function apoca:loop/creeper
execute as @e[type=enderman] at @s run function apoca:loop/enderman
execute as @e[type=iron_golem] at @s run function apoca:loop/golem
execute as @e[type=ghast] at @s run function apoca:loop/ghast
execute as @e[type=phantom] at @s run function apoca:loop/phantom
execute as @e[type=creaking] at @s run function apoca:loop/creaking
execute as @e[type=fireball] at @s run function apoca:loop/fireball
execute as @e[type=experience_orb] at @s run function apoca:loop/xporb
execute as @e[type=#apoca:champion,tag=APOCChampion] at @s run function apoca:loop/champion
# Remove excess hats
execute as @e[type=item_display,tag=APOCEnderHat] unless function apoca:special/seated run kill @s
# Update graves
execute as @e[type=marker,tag=APOCGrave] at @s run particle sculk_soul ~ ~0.5 ~ 0.4 0.4 0.4 0 1 force
scoreboard players add @e[type=marker,tag=APOCGrave] APOCGraveTime 1
scoreboard players add @e[type=text_display,tag=APOCGraveName] APOCGraveTime 1
# Run player effects
execute as @a at @s run function apoca:loop/player
execute if entity @a[gamemode=!spectator] unless entity @a[gamemode=!spectator,tag=!RestfulSleeping] run time add 20
gamerule doDaylightCycle true
execute unless entity @a[gamemode=!spectator] run gamerule doDaylightCycle false
# Set hard difficulty and gamerules
difficulty hard
gamerule playersSleepingPercentage 200
gamerule doInsomnia false
gamerule naturalRegeneration false