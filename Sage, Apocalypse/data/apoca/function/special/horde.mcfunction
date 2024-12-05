## >> From: apoca:tick
## >> At: Any zombie
## >> As: Any zombie
## >> Does: Spawn zombie nearby
## >> Input: None
summon marker ~ ~ ~ {Tags:["APOCZombieSpawner"]}
spreadplayers ~ ~ 0 40 false @e[tag=APOCZombieSpawner]
execute at @e[tag=APOCZombieSpawner] as @e[type=#apoca:zombie,distance=..80] run scoreboard players add _SpawnDensity APOCGlobals 1
execute at @e[tag=APOCZombieSpawner] unless entity @e[type=#apoca:avoided,distance=..20] unless entity @e[type=#apoca:zombie,scores={APOCZombieDensity=12..},distance=..100] unless score _SpawnDensity APOCGlobals matches 40.. run summon zombie ~ ~ ~
kill @e[tag=APOCZombieSpawner]
scoreboard players reset _SpawnDensity APOCGlobals