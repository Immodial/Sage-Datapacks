## >> From: apoca:tick
## >> At: Any iron golem
## >> As: Any iron golem
## >> Does: Run iron golem modifiers
## >> Input: None
# Apply stats
execute if entity @s[tag=!APOCModified] run function apoca:stats/golem
# Ready ground smash when falling 4 blocks
execute store result score _GolemFall APOCGlobals run data get entity @s fall_distance
execute if score _GolemFall APOCGlobals matches 4.. run tag @s add APOCSmashFall
scoreboard players reset _GolemFall APOCGlobals
# Once fall distance has reset, smash the ground and unready
execute unless entity @s[tag=APOCSmashFall,nbt={fall_distance:0d}] run return fail
playsound item.mace.smash_ground neutral @a ~ ~ ~ 1 1.6
playsound entity.iron_golem.death neutral @a ~ ~ ~ 1 2
particle minecraft:block{block_state:{Name:"minecraft:iron_block"}} ~ ~ ~ 1 0 1 0 100
tag @s remove APOCSmashFall
tag @s add APOCSmashing
execute as @e[type=!villager,type=!iron_golem,distance=..3] run damage @s 10 mace_smash by @n[tag=APOCSmashing,distance=..3]
tag @s remove APOCSmashing