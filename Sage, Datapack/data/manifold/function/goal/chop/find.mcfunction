## >> From: manifold:illager
## >> At: Any illager
## >> As: Illager tasked with cutting wood
## >> Does: Raycast to find wood
## >> Input: None
scoreboard players remove _FindDistance MNFGlobals 1
$execute rotated $(Yaw) $(Pitch) if score _FindDistance MNFGlobals matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run return run function manifold:goal/chop/find with storage manifold ResourceFinder
execute positioned ^ ^ ^0.5 if block ~ ~ ~ #manifold:wood_gathered unless block ~ ~ ~ #leaves align xyz unless entity @e[type=bat,tag=MNFTargetedWood,distance=..0.5] run summon bat ~0.5 ~0.5 ~0.5 {Tags:["MNFTarget","MNFTargetedWood","MNFTargeting"],PersistenceRequired:true,Health:1f,NoAI:true,Silent:true,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:9,show_particles:false}]}
execute if predicate {"condition":"random_chance","chance":0.5} run tp @n[type=bat,tag=MNFTargeting] ~0.4 ~ ~
execute if predicate {"condition":"random_chance","chance":0.5} run tp @n[type=bat,tag=MNFTargeting] ~-0.4 ~ ~
execute if predicate {"condition":"random_chance","chance":0.5} run tp @n[type=bat,tag=MNFTargeting] ~ ~ ~0.4
execute if predicate {"condition":"random_chance","chance":0.5} run tp @n[type=bat,tag=MNFTargeting] ~ ~ ~-0.4
damage @s 0 manifold:agro by @n[type=bat,tag=MNFTargeting]
tag @e[type=bat] remove MNFTargeting