## >> From: manifold:illager
## >> At: Illager cutting wood, projected forwards
## >> As: Illager tasked with cutting wood
## >> Does: Break blocks
## >> Input: None
scoreboard players remove _BreakDistance MNFGlobals 1
execute unless block ~ ~ ~ #manifold:wood_gathered if score _BreakDistance MNFGlobals matches 1.. positioned ^ ^ ^0.5 run return run function manifold:goal/chop/break
execute if block ~ ~ ~ #manifold:wood_gathered run setblock ~ ~ ~ air destroy
fill ~ ~ ~ ~ ~8 ~ air replace #manifold:wood_gathered
execute positioned ~ ~-1.1 ~ align y if block ~ ~ ~ #manifold:wood_gathered unless block ~ ~ ~ #leaves unless entity @e[type=bat,tag=MNFTargetedWood,distance=..0.5] run summon bat ~ ~0.5 ~ {Tags:["MNFTarget","MNFTargetedWood","MNFTargeting"],PersistenceRequired:true,Health:1f,NoAI:true,Silent:true,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:9,show_particles:false}]}
damage @n[tag=MNFGoalExecuting] 0 manifold:agro by @n[type=bat,tag=MNFTargeting]
tag @e[type=bat] remove MNFTargeting