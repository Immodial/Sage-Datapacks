## >> From: manifold:illager
## >> At: Illager patrol leader
## >> As: Illager patrol leader
## >> Does: Mark nearby patrol members for camping
## >> Input: None
execute unless entity @e[type=vindicator,tag=!MNFGoaled,distance=..20,nbt={Patrolling:true}] run return fail
execute unless entity @e[type=pillager,tag=!MNFGoaled,distance=..20,nbt={Patrolling:true}] run return fail
playsound entity.villager.work_fletcher hostile @a ~ ~ ~ 0.5 0.4
playsound entity.pillager.celebrate hostile @a ~ ~ ~ 0.5 1.6
tag @s add MNFCamping
scoreboard players set @s MNFGoalExpiry 1200
scoreboard players set @e[type=#manifold:illager_colonist,tag=!MNFGoaled,distance=..20,nbt={Patrolling:true}] MNFGoalExpiry 1200
tag @e[type=vindicator,tag=!MNFGoaled,distance=..20,nbt={Patrolling:true}] add MNFWoodChopping
tag @e[type=pillager,tag=!MNFGoaled,distance=..20,nbt={Patrolling:true}] add MNFWoodGathering
tag @e[type=#manifold:illager_colonist,tag=!MNFGoaled,distance=..20,nbt={Patrolling:true}] add MNFGoaled