## >> From: apoca:init, apoca:tick
## >> At: None
## >> As: Server
## >> Does: Run global loops
## >> Input: None
# Find density
scoreboard players reset * APOCZombieDensity
execute as @e[type=#apoca:zombie] at @s run scoreboard players add @e[type=#apoca:zombie,distance=..6] APOCZombieDensity 1
# Run zombie effects
execute as @e[type=#apoca:zombie] at @s run function apoca:loop/zombie
# Run skeleton effects
execute as @e[type=#apoca:skeleton] at @s run function apoca:loop/skeleton
# Run spider effects
execute as @e[type=#apoca:spider] at @s run function apoca:loop/spider
# Run creeper effects
execute as @e[type=creeper,nbt=!{Fuse:0s},nbt=!{ignited:true}] at @s run function apoca:loop/creeper
# Run iron golem effects
execute as @e[type=iron_golem] at @s run function apoca:loop/golem
# Set hard difficulty
difficulty hard
# Loop
schedule function apoca:tick 1