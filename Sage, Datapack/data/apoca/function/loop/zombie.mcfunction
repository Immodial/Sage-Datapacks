## >> From: apoca:tick
## >> At: Any zombie
## >> As: Any zombie
## >> Does: Run zombie modifiers
## >> Input: None
# Apply stats
execute if entity @s[tag=!APOCModified] run function apoca:stats/zombie
# When lacking a helmet, wear use "scalp" to prevent burning
execute unless items entity @s armor.head * run item replace entity @s armor.head with rotten_flesh[custom_data={"APOCScalp":true},item_model="air"]
# Reset horde call ability when not angry
scoreboard players remove @s APOCHordeCooldown 1
tag @s add APOCAngerChecking
execute on target if entity @s[type=#apoca:horde_target] run tag @n[tag=APOCAngerChecking] add APOCAngerChecked
tag @s remove APOCAngerChecking
scoreboard players set @s[tag=!APOCHordeCharging,tag=!APOCAngerChecked] APOCHordeCooldown 200
scoreboard players set @s[tag=!APOCHordeCharging,scores={APOCZombieDensity=5..}] APOCHordeCooldown 200
# When horde summon is charged, randomly decide to do it
execute unless entity @e[tag=APOCHordeCharging,distance=..30] unless entity @e[type=zombie,scores={APOCZombieDensity=6..},distance=..40] if score @s APOCHordeCooldown matches ..0 if predicate {"condition":"random_chance","chance":0.02} unless predicate apoca:daytime_lenient if dimension overworld run function apoca:special/hordecharge
execute if entity @s[tag=APOCHordeCharging] if score @s APOCHordeCooldown matches ..0 if dimension overworld run function apoca:special/horde
# Randomly dissapear during day
execute if predicate {"condition":"random_chance","chance":0.001} if predicate apoca:daytime_lenient unless entity @p[distance=..30] if dimension overworld run tp @s ~ -1000 ~
tag @s remove APOCAngerChecked
# Die quickly if in fire
execute unless data entity @s {Fire:0s} run tag @s add APOCMelting
execute if block ~ ~ ~ water run tag @s remove APOCMelting
execute if entity @s[tag=APOCMelting] run data modify entity @s Fire set value 10s
execute if entity @s[tag=APOCMelting] if block ~ ~ ~ #minecraft:replaceable run setblock ~ ~0.1 ~ fire
# Only break blocks if in high density crowd, near player, and in front of blocks
execute unless score @s APOCZombieDensity matches 6.. run return run scoreboard players remove @s[scores={APOCBreakTime=1..}] APOCBreakTime 1
execute anchored eyes unless entity @p[distance=..5] run return run scoreboard players remove @s[scores={APOCBreakTime=1..}] APOCBreakTime 1
execute anchored eyes facing entity @p[distance=..5] eyes unless block ^ ^ ^0.8 #apoca:zombie_breakable unless block ^ ^-1 ^0.8 #apoca:zombie_breakable run return run scoreboard players remove @s[scores={APOCBreakTime=1..}] APOCBreakTime 1
scoreboard players add @s APOCBreakTime 1
execute if score @s APOCBreakTime matches 50 anchored eyes run playsound block.nether_wood.place hostile @a ^ ^ ^0.8 1 0.2
execute if score @s APOCBreakTime matches 50 anchored eyes run playsound entity.slime.attack hostile @a ^ ^ ^0.8 1 0.2
execute if score @s APOCBreakTime matches 100 anchored eyes run playsound block.nether_wood.place hostile @a ^ ^ ^0.8 1 0.2
execute if score @s APOCBreakTime matches 100 anchored eyes run playsound entity.slime.attack hostile @a ^ ^ ^0.8 1 0.2
execute unless score @s APOCBreakTime matches 110.. run return fail
scoreboard players remove @s APOCBreakTime 80
execute anchored eyes facing entity @p[distance=..5] eyes if block ^ ^ ^0.8 #apoca:zombie_breakable run setblock ^ ^ ^0.8 air destroy
execute anchored eyes facing entity @p[distance=..5] eyes if block ^ ^-1 ^0.8 #apoca:zombie_breakable run setblock ^ ^-1 ^0.8 air destroy