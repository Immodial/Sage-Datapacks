## >> From: manifold:illager
## >> At: Illager patrol leader
## >> As: Illager patrol leader
## >> Does: Mark nearby patrol members for camping
## >> Input: None
playsound event.raid.horn hostile @a ~ ~ ~ 0.5 1.6
tag @e[type=#illager,distance=..20] add MNFGoaled
execute as @e[type=#illager,distance=..20] run data merge entity @s {Patrolling:true}
execute as @e[type=#illager,distance=..20] run data modify entity @s patrol_target set from entity @p Pos
scoreboard players set @e[type=#illager,distance=..20] MNFGoalExpiry 150
execute unless block ~ ~-1 ~ air align xyz run summon bat ~0.5 ~-0.5 ~0.5 {Tags:["MNFTarget","MNFTargettedHuddle","MNFtargeting"],PersistenceRequired:true,Health:1f,NoAI:true,Silent:true,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:9,show_particles:false}]}
execute as @e[type=#illager,distance=..20] run damage @s 0 manifold:agro by @n[type=bat,tag=MNFtargeting]
tag @e[type=bat] remove MNFtargeting