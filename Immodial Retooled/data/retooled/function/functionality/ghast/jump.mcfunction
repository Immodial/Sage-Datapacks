## >> From: retooled:tick
## >> At: Player with ghast band offhand
## >> As: Player with ghast band offhand
## >> Does: Hover 
## >> Input: None
execute if entity @s[tag=!RTJumped,nbt=!{FallDistance:0f}] run effect give @s slow_falling 1 2 true
execute if entity @s[tag=!RTJumped,nbt=!{FallDistance:0f}] run effect give @s levitation 1 2 true
tag @s add RTDoubleJumped