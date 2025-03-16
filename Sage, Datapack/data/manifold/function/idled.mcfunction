## >> From: manifold:illager
## >> At: Illager who's goals expired
## >> As: Illager who's goals expired
## >> Does: Remove all goals
## >> Input: None
summon bat ~ ~-1 ~ {Tags:["MNFTarget","MNFTargettedIdle","MNFtargeting"],PersistenceRequired:true,Health:1f,NoAI:true,Silent:true,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:9,show_particles:false}]}
damage @s 0 manifold:agro by @n[type=bat,tag=MNFtargeting]
scoreboard players set @n[type=bat,tag=MNFtargeting] MNFTargetExpiry 190
tag @e[type=bat] remove MNFtargeting
scoreboard players set @s MNFIdleTime 0