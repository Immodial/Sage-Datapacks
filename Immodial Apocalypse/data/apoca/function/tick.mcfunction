## >> From: apoca:init, apoca:tick
## >> At: None
## >> As: Server
## >> Does: Run global loops
## >> Input: None
# Find density
scoreboard players reset * APOCZombieDensity
execute as @e[type=#apoca:zombie] at @s run scoreboard players add @e[type=#apoca:zombie,distance=..6] APOCZombieDensity 1
# Run zombie effects
execute as @e[type=#apoca:zombie] at @s run function apoca:zombie
# Run zombie effects
execute as @e[type=#apoca:skeleton] at @s run function apoca:skeleton
# Set hard difficulty
difficulty hard
# Loop
schedule function apoca:tick 1