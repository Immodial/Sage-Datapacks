## >> From: apoco:tick
## >> At: Any zombie
## >> As: Any zombie
## >> Does: Run zombie modifiers
## >> Input: None
# Apply stats
execute if entity @s[tag=!APOCModified] run function apoco:zombiestats
# Apply bonuses if in a crowd
execute if score @s APOCZombieDensity matches 3.. run attribute @s generic.armor modifier add apoco:small_crowd_armor 4 add_value
execute if score @s APOCZombieDensity matches 6.. run attribute @s generic.armor modifier add apoco:medium_crowd_armor 2 add_value
execute if score @s APOCZombieDensity matches 6.. run attribute @s generic.attack_damage modifier add apoco:medium_crowd_damage 1 add_value
execute if score @s APOCZombieDensity matches 6.. run attribute @s generic.knockback_resistance modifier add apoco:medium_crowd_resilience 0.3 add_value
execute if score @s APOCZombieDensity matches 10.. run attribute @s generic.armor modifier add apoco:large_crowd_armor 3 add_value
execute if score @s APOCZombieDensity matches 10.. run attribute @s generic.attack_damage modifier add apoco:large_crowd_damage 2 add_value
execute if score @s APOCZombieDensity matches 10.. run attribute @s generic.attack_knockback modifier add apoco:large_crowd_knockback 2 add_value
execute if score @s APOCZombieDensity matches 10.. run attribute @s generic.knockback_resistance modifier add apoco:large_crowd_resilience 0.5 add_value
# Remove those bonuses otherwise
execute unless score @s APOCZombieDensity matches 3.. run attribute @s generic.armor modifier remove apoco:small_crowd_armor
execute unless score @s APOCZombieDensity matches 6.. run attribute @s generic.armor modifier remove apoco:medium_crowd_armor
execute unless score @s APOCZombieDensity matches 6.. run attribute @s generic.attack_damage modifier remove apoco:medium_crowd_damage
execute unless score @s APOCZombieDensity matches 6.. run attribute @s generic.knockback_resistance modifier remove apoco:medium_crowd_resilience
execute unless score @s APOCZombieDensity matches 10.. run attribute @s generic.armor modifier remove apoco:large_crowd_armor
execute unless score @s APOCZombieDensity matches 10.. run attribute @s generic.attack_damage modifier remove apoco:large_crowd_damage
execute unless score @s APOCZombieDensity matches 10.. run attribute @s generic.attack_knockback modifier remove apoco:large_crowd_knockback
execute unless score @s APOCZombieDensity matches 10.. run attribute @s generic.knockback_resistance modifier remove apoco:large_crowd_resilience
# Spawn zombies randomly
execute unless function apoco:random/4800 unless predicate apoco:daytime if dimension overworld run function apoco:bonus
# Randomly dissapear during day
execute unless function apoco:random/9600 if predicate apoco:daytime unless entity @e[type=#apoc:avoided,distance=..30] if dimension overworld run tp @s ~ -1000 ~
# Die quickly if in fire
execute if block ~ ~ ~ #apoco:melting run attribute @s generic.burning_time modifier add apoco:stepped_in_fire 1000 add_value
execute if block ~ ~ ~ #apoco:melting run tag @s add APOCMelting
execute if entity @s[tag=APOCMelting] run data modify entity @s Fire set value 10s
execute if entity @s[tag=APOCMelting] if block ~ ~ ~ #minecraft:replaceable run setblock ~ ~0.1 ~ fire
# Break blocks to get to player
execute if score @s APOCZombieDensity matches 6.. anchored eyes facing entity @p[distance=..3] eyes if block ^ ^ ^0.8 #mineable/axe run scoreboard players add @s APOCBreakTime 1
execute if score @s APOCBreakTime matches 60.. anchored eyes facing entity @p[distance=..3] eyes if block ^ ^ ^0.8 #mineable/axe run setblock ^ ^ ^0.8 air destroy