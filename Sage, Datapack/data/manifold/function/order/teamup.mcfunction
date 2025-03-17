## >> From: manifold:illager
## >> At: Illager patrol leader
## >> As: Illager patrol leader
## >> Does: Mark nearby patrol members for getting wood
## >> Input: None
execute if entity @s[type=pillager] unless entity @e[type=vindicator,tag=!MNFGoaled,distance=..20,nbt={Patrolling:false}] run return fail
execute if entity @s[type=vindicator] unless entity @e[type=pillager,tag=!MNFGoaled,distance=..20,nbt={Patrolling:false}] run return fail
playsound entity.vindicator.celebrate hostile @a ~ ~ ~ 0.5 0.8
playsound entity.pillager.celebrate hostile @a ~ ~ ~ 0.5 1.4
tag @n[type=pillager,tag=!MNFGoaled,distance=..20,nbt={Patrolling:false}] add MNFWoodGathering
tag @n[type=vindicator,tag=!MNFGoaled,distance=..20,nbt={Patrolling:false}] add MNFWoodChopping
scoreboard players set @n[type=pillager,tag=!MNFGoaled,distance=..20,nbt={Patrolling:false}] MNFGoalExpiry 800
scoreboard players set @n[type=vindicator,tag=!MNFGoaled,distance=..20,nbt={Patrolling:false}] MNFGoalExpiry 800
execute unless block ~ ~-1 ~ #replaceable align xyz run summon bat ~0.5 ~-0.5 ~0.5 {Tags:["MNFTarget","APOCCrammingProof","MNFTargetedHuddle","MNFTargeting"],PersistenceRequired:true,Health:1f,NoAI:true,Silent:true,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:9,show_particles:false}]}
execute as @e[type=pillager,tag=!MNFGoaled,distance=..20,nbt={Patrolling:false}] run damage @s 0 manifold:agro by @n[type=bat,tag=MNFTargeting]
execute as @e[type=vindicator,tag=!MNFGoaled,distance=..20,nbt={Patrolling:false}] run damage @s 0 manifold:agro by @n[type=bat,tag=MNFTargeting]
tag @e[type=bat] remove MNFTargeting
tag @n[type=pillager,tag=!MNFGoaled,distance=..20,nbt={Patrolling:false}] add MNFGoaled
tag @n[type=vindicator,tag=!MNFGoaled,distance=..20,nbt={Patrolling:false}] add MNFGoaled