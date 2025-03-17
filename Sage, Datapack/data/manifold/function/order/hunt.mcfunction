## >> From: manifold:illager
## >> At: Illager patrol leader
## >> As: Illager patrol leader
## >> Does: Mark nearby patrol members for camping
## >> Input: None
execute unless entity @e[type=#manifold:huntable,distance=..15] run return fail
playsound entity.witch.celebrate hostile @a ~ ~ ~ 0.5 0.4
playsound entity.witch.celebrate hostile @a ~ ~ ~ 0.5 0.8
scoreboard players set @s MNFGoalExpiry 400
tag @s add MNFHunting
tag @s add MNFGoaled