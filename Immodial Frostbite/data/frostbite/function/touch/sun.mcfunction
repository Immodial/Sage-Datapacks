## >> From: frostbite:sunlit (advancement)
## >> At: Player being in the sun
## >> As: Player being in the sun
## >> Does: Update player temperature
## >> Input: None
execute unless predicate frostbite:raining if predicate frostbite:day run scoreboard players add @s FBTemperature 1
advancement revoke @s only frostbite:touch/sunlit