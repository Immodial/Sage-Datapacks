## >> From: apoca:tick
## >> At: Any zombie
## >> As: Any zombie
## >> Does: Spawn zombie nearby
## >> Input: None
summon marker ~ ~ ~ {Tags:["APOCZombieSpawner"]}
spreadplayers ~ ~ 0 40 false @e[tag=APOCZombieSpawner]
execute as @e[tag=APOCZombieSpawner] at @e[type=#apoca:zombie,distance=..80] run scoreboard players add @s APOCZombieDensity 1
kill @e[tag=APOCZombieSpawner,scores={APOCZombieDensity=30..}]
execute as @e[tag=APOCZombieSpawner] at @s unless entity @e[type=#apoca:avoided,distance=..20] unless entity @e[type=#apoca:zombie,scores={APOCZombieDensity=12..},distance=..100] if predicate apoca:unlit run summon zombie ~ ~ ~
kill @e[tag=APOCZombieSpawner]
scoreboard players reset _SpawnDensity APOCGlobals