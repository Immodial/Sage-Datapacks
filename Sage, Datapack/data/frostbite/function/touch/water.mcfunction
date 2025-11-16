## >> From: frostbite:wet (advancement)
## >> At: Player being in water
## >> As: Player being in water
## >> Does: Update player temperature
## >> Input: None
advancement revoke @s only frostbite:touch/wet
execute on vehicle if entity @s[type=#frostbite:water_blocking] run return fail
scoreboard players set @s FBWetness 120