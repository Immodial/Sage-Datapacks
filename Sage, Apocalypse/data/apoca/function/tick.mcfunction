## >> From: apoca:init, apoca:tick
## >> At: None
## >> As: Server
## >> Does: Run global loops
## >> Input: None
# Run mob effects
execute as @e[type=#apoca:zombie] at @s run function apoca:loop/zombie
execute as @e[type=#apoca:skeleton] at @s run function apoca:loop/skeleton
execute as @e[type=#apoca:spider] at @s run function apoca:loop/spider
execute as @e[type=creeper,nbt=!{Fuse:0s},nbt=!{ignited:true}] at @s run function apoca:loop/creeper
execute as @e[type=iron_golem] at @s run function apoca:loop/golem
execute as @e[type=ghast] at @s run function apoca:loop/ghast
execute as @e[type=creaking] at @s run function apoca:loop/creaking
execute as @e[type=fireball] at @s run function apoca:loop/fireball
execute as @e[type=experience_orb] at @s run function apoca:loop/xporb
# Run player effects
execute as @a at @s run function apoca:loop/player
execute unless entity @a[gamemode=!spectator,tag=!RestfulSleeping] run time add 20
# Set hard difficulty and lack of sleep
difficulty hard
gamerule playersSleepingPercentage 200
# Loop
schedule function apoca:tick 1