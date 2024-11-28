## >> From: apoca:tick
## >> At: Any zombie
## >> As: Any zombie
## >> Does: Run zombie modifiers
## >> Input: None
# Apply stats
execute if entity @s[tag=!APOCModified] run function apoca:stats/zombie
# Apply bonuses if in a crowd
execute if score @s APOCZombieDensity matches 3.. run attribute @s armor modifier add apoca:small_crowd_armor 4 add_value
execute if score @s APOCZombieDensity matches 6.. run attribute @s armor modifier add apoca:medium_crowd_armor 2 add_value
execute if score @s APOCZombieDensity matches 6.. run attribute @s attack_damage modifier add apoca:medium_crowd_damage 1 add_value
execute if score @s APOCZombieDensity matches 6.. run attribute @s knockback_resistance modifier add apoca:medium_crowd_resilience 0.3 add_value
execute if score @s APOCZombieDensity matches 10.. run attribute @s armor modifier add apoca:large_crowd_armor 3 add_value
execute if score @s APOCZombieDensity matches 10.. run attribute @s attack_damage modifier add apoca:large_crowd_damage 2 add_value
execute if score @s APOCZombieDensity matches 10.. run attribute @s attack_knockback modifier add apoca:large_crowd_knockback 2 add_value
execute if score @s APOCZombieDensity matches 10.. run attribute @s knockback_resistance modifier add apoca:large_crowd_resilience 0.5 add_value
# Remove those bonuses otherwise
execute unless score @s APOCZombieDensity matches 3.. run attribute @s armor modifier remove apoca:small_crowd_armor
execute unless score @s APOCZombieDensity matches 6.. run attribute @s armor modifier remove apoca:medium_crowd_armor
execute unless score @s APOCZombieDensity matches 6.. run attribute @s attack_damage modifier remove apoca:medium_crowd_damage
execute unless score @s APOCZombieDensity matches 6.. run attribute @s knockback_resistance modifier remove apoca:medium_crowd_resilience
execute unless score @s APOCZombieDensity matches 10.. run attribute @s armor modifier remove apoca:large_crowd_armor
execute unless score @s APOCZombieDensity matches 10.. run attribute @s attack_damage modifier remove apoca:large_crowd_damage
execute unless score @s APOCZombieDensity matches 10.. run attribute @s attack_knockback modifier remove apoca:large_crowd_knockback
execute unless score @s APOCZombieDensity matches 10.. run attribute @s knockback_resistance modifier remove apoca:large_crowd_resilience
# Spawn zombies randomly
execute unless function apoca:random/4800 unless predicate apoca:daytime if dimension overworld run function apoca:bonus
# Randomly dissapear during day
execute unless function apoca:random/9600 if predicate apoca:daytime unless entity @e[type=#apoca:avoided,distance=..30] if dimension overworld run tp @s ~ -1000 ~
# Die quickly if in fire
execute if block ~ ~ ~ #apoca:melting run attribute @s burning_time modifier add apoca:stepped_in_fire 1000 add_value
execute if block ~ ~ ~ #apoca:melting run tag @s add APOCMelting
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