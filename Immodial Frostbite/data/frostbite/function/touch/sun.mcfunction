## >> From: frostbite:chilling (advancement)
## >> At: Player standing on something slightly cold
## >> As: Player standing on something slightly cold
## >> Does: Update player temperature
## >> Input: None
execute unless predicate frostbite:raining if predicate frostbite:day run scoreboard players add @s FBTemperature 1
advancement revoke @s only frostbite:touch/sunlit