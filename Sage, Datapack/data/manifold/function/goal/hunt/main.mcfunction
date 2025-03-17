## >> From: manifold:illager
## >> At: Any illager
## >> As: Pillager collecting others' inventories
## >> Does: Pick up dropped items
## >> Input: None
execute on target if entity @s[type=#manifold:huntable] run return fail
damage @s 0 manifold:agro by @n[type=#manifold:huntable,distance=..15]
execute as @e[type=item,distance=..3] if items entity @s contents #manifold:animal_gathered run function manifold:goal/hunt/grab
execute as @e[type=item,distance=6..15] at @s unless entity @e[type=bat,tag=MNFTargetedItem,distance=..2] align xyz unless block ~ ~-1 ~ #replaceable run summon bat ~0.5 ~-0.5 ~0.5 {Tags:["MNFTarget","APOCCrammingProof","MNFTargetedItem","MNFTargeting"],PersistenceRequired:true,Health:1f,NoAI:true,Silent:true,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:9,show_particles:false}]}
damage @s 0 manifold:agro by @n[type=bat,tag=MNFTargeting]
tag @e[type=bat] remove MNFTargeting