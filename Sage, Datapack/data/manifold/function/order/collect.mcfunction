## >> From: manifold:illager
## >> At: Illager patrol leader
## >> As: Illager patrol leader
## >> Does: Mark nearby pillagers members for item collection
## >> Input: None
execute unless entity @e[type=pillager,tag=!MNFGoaled,distance=1..20,nbt={equipment:{offhand:{id:"minecraft:bundle"}}}] run return fail
playsound entity.ravager.celebrate hostile @a ~ ~ ~ 0.5 1.8
scoreboard players set @e[type=pillager,tag=!MNFGoaled,distance=..20] MNFGoalExpiry 200
tag @s add MNFCollector
tag @s add MNFGoaled
tag @e[type=pillager,tag=!MNFGoaled,distance=..20] add MNFCollectedFrom
execute unless block ~ ~-1 ~ air align xyz run summon bat ~0.5 ~-0.5 ~0.5 {Tags:["MNFTarget","MNFTargetedCollection","MNFTargeting"],PersistenceRequired:true,Health:1f,NoAI:true,Silent:true,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:9,show_particles:false}]}
execute as @e[type=pillager,tag=!MNFGoaled,distance=..20] run damage @s 0 manifold:agro by @n[type=bat,tag=MNFTargeting]
tag @e[type=bat] remove MNFTargeting
tag @e[type=pillager,distance=..20] add MNFGoaled