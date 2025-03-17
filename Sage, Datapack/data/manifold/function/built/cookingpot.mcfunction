## >> From: manifold:loop
## >> At: Sleeping bag marker
## >> As: Sleeping bag marker
## >> Does: Periodically spawn illagers when players are not nearby
## >> Input: None
particle enchanted_hit ~ ~ ~ 0.3 0.3 0.3 0 5
execute unless block ~ ~ ~ #cauldrons run kill @s
execute unless block ~ ~-2 ~ campfire run kill @s
execute if entity @a[gamemode=!spectator,distance=..30] run return fail
execute unless predicate {"condition":"random_chance","chance":0.003} run return fail
effect give @e[type=#illager,tag=!MNFGoaled,distance=..20] regeneration 25 1
playsound block.brewing_stand.brew block @a ~ ~ ~ 0.5 0.1
playsound block.fire.ambient block @a ~ ~ ~ 0.5 0.6
playsound block.fire.ambient block @a ~ ~ ~ 0.5 0.4
summon bat ~ ~ ~ {Tags:["MNFTarget","APOCCrammingProof","APOCCrammingProof","MNFTargetedPot","MNFTargeting"],PersistenceRequired:true,Health:1f,NoAI:true,Silent:true,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:9,show_particles:false}]}
damage @n[type=#illager,tag=!MNFGoaled,distance=..20] 0 manifold:agro by @n[type=bat,tag=MNFTargeting]
tag @e[type=bat] remove MNFTargeting
scoreboard players set @n[type=#illager,tag=!MNFGoaled,distance=..20] MNFGoalExpiry 300
tag @n[type=#illager,tag=!MNFGoaled,distance=..20] add MNFGoaled