## >> From: manifold:loop
## >> At: Range dummy marker
## >> As: Range dummy marker
## >> Does: Periodically spawn illagers when players are not nearby
## >> Input: None
particle enchanted_hit ~ ~0.5 ~ 0.3 0.5 0.3 0 12
execute unless block ~ ~1 ~ carved_pumpkin run kill @s
execute unless block ~ ~ ~ hay_block run kill @s
execute unless block ~ ~-1 ~ #fences run kill @s
execute positioned ~ ~-1 ~ as @e[tag=MNFTargetedDummy,distance=..1] on attacker run effect give @s strength 1200 0 false
execute positioned ~ ~-1 ~ as @e[tag=MNFTargetedDummy,distance=..1] on attacker run effect give @s resistance 1200 0 false
execute if entity @a[gamemode=!spectator,distance=..30] run return fail
execute unless predicate {"condition":"random_chance","chance":0.003} run return fail
execute unless entity @e[type=#illager,tag=!MNFGoaled,distance=..20] run return fail
playsound entity.creaking.death hostile @a ~ ~ ~ 0.5 1.6
playsound entity.creaking.ambient hostile @a ~ ~ ~ 0.5 0.8
execute facing entity @n[type=#illager,tag=!MNFGoaled,distance=..20] eyes rotated ~ 0 run summon bat ^ ^-1.2 ^0.49 {Tags:["MNFTarget","MNFTargetedDummy","MNFTargeting"],PersistenceRequired:true,Health:1f,NoAI:true,Silent:true,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:9,show_particles:false}]}
damage @n[type=#illager,tag=!MNFGoaled,distance=..20] 0 manifold:agro by @n[type=bat,tag=MNFTargeting]
tag @e[type=bat] remove MNFTargeting
scoreboard players set @n[type=#illager,tag=!MNFGoaled,distance=..20] MNFGoalExpiry 300
tag @n[type=#illager,tag=!MNFGoaled,distance=..20] add MNFGoaled