## >> From: frostbite:findsources
## >> At: Heat source block
## >> As: Player standing near a heat source
## >> Does: Heat player based on block type
## >> Input: None
execute if block ~ ~ ~ #frostbite:source/safe_fire[lit=true] unless score @s FBTemperature matches 790.. run scoreboard players add @s FBTemperature 10
execute if block ~ ~ ~ #frostbite:source/lava run scoreboard players add @s FBTemperature 7
execute if block ~ ~ ~ fire run scoreboard players add @s FBTemperature 8
execute if block ~ ~ ~ magma_block unless score @s FBTemperature matches 397.. run scoreboard players add @s FBTemperature 3
execute if block ~ ~ ~ #frostbite:source/snowy unless score @s FBTemperature matches ..-397 run scoreboard players remove @s FBTemperature 2
execute if block ~ ~ ~ soul_fire run scoreboard players remove @s FBTemperature 8
execute if block ~ ~ ~ soul_campfire[lit=true] unless score @s FBTemperature matches ..-1990 run scoreboard players remove @s FBTemperature 10