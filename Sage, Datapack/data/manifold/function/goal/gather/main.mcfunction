## >> From: manifold:illager
## >> At: Any illager
## >> As: Pillager tasked with collecting wood
## >> Does: Collect wood
## >> Input: None
execute as @e[type=item,distance=..3] if items entity @s contents #manifold:wood_gathered run function manifold:goal/gather/grab
execute as @e[type=item,distance=6..15] at @s if items entity @s contents #manifold:wood_gathered unless entity @e[type=bat,tag=MNFTargettedItem,distance=..2] unless block ~ ~-1 ~ #air run summon bat ~0.5 ~-0.5 ~0.5 {Tags:["MNFTarget","MNFTargettedItem","MNFTargeting"],PersistenceRequired:true,Health:1f,NoAI:true,Silent:true,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:9,show_particles:false}]}
damage @s 0 manifold:agro by @n[type=bat,tag=MNFTargeting]
tag @e[type=bat] remove MNFTargeting