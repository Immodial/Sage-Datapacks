## >> From: apoca:horde
## >> At: Any zombie
## >> As: Any zombie
## >> Does: Roar and spawn zombies nearby
## >> Input: None
tag @s remove APOCHordeCharging
scoreboard players set @e[type=zombie,tag=!APOCHordeCharging,distance=..20] APOCHordeCooldown 300
scoreboard players set @s APOCHordeCooldown 600
# Play sounds and show particles
playsound minecraft:entity.zombie_horse.death hostile @a ~ ~ ~ 2.4 0.3
playsound minecraft:entity.zombie_horse.death hostile @a ~ ~ ~ 2.4 0.8
playsound minecraft:entity.zombie.death hostile @a ~ ~ ~ 2.4 0.4
rotate @s ~ -90
execute anchored eyes run particle dust{color:608009,scale:0.8} ^ ^0.4 ^ 0.05 0 0.05 0 10
execute anchored eyes run particle dust{color:608009,scale:1.4} ^ ^0.8 ^ 0.1 0 0.1 0 10
execute anchored eyes run particle dust{color:608009,scale:2.2} ^ ^1.4 ^ 0.2 0 0.2 0 9
# Set high reinforcement chance
attribute @s spawn_reinforcements modifier add apoca:horde_called 0.6 add_value
# When sky is visible, spawn an amount of zombies
execute unless predicate apoca:under_sky run return fail
summon marker ~ ~ ~ {Tags:["APOCZombieSpawner"]}
summon marker ~ ~ ~ {Tags:["APOCZombieSpawner"]}
summon marker ~ ~ ~ {Tags:["APOCZombieSpawner"]}
summon marker ~ ~ ~ {Tags:["APOCZombieSpawner"]}
execute if predicate {"condition":"random_chance","chance":0.5} run summon marker ~ ~ ~ {Tags:["APOCZombieSpawner"]}
execute if predicate {"condition":"random_chance","chance":0.5} run summon marker ~ ~ ~ {Tags:["APOCZombieSpawner"]}
execute if predicate {"condition":"random_chance","chance":0.5} run summon marker ~ ~ ~ {Tags:["APOCZombieSpawner"]}
spreadplayers ~ ~ 0 40 false @e[tag=APOCZombieSpawner]
execute as @e[tag=APOCZombieSpawner] at @e[type=#apoca:zombie,distance=..30] run scoreboard players add @s APOCZombieDensity 1
kill @e[tag=APOCZombieSpawner,scores={APOCZombieDensity=10..}]
execute as @e[tag=APOCZombieSpawner] at @s unless entity @e[type=#apoca:avoided,distance=..20] if predicate apoca:unlit run summon zombie ~ ~ ~
kill @e[tag=APOCZombieSpawner]