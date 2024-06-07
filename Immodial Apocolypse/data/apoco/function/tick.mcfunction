## >> From: apoco:init, apoco:tick
## >> At: None
## >> As: Server
## >> Does: Run global loops
## >> Input: None
# Find density
scoreboard players reset * APOCZombieDensity
execute as @e[type=#apoco:zombie] at @s run scoreboard players add @e[type=#apoco:zombie,distance=..6] APOCZombieDensity 1
# Run zombie effects
execute as @e[type=#apoco:zombie] at @s run function apoco:zombie
# Run zombie effects
execute as @e[type=#apoco:skeleton] at @s run function apoco:skeleton
# Set hard difficulty
difficulty hard
# Loop
schedule function apoco:tick 1