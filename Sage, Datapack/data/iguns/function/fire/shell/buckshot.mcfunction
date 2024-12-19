## >> From: iguns:fire/call
## >> At: Player firing a gun
## >> As: Player firing a gun
## >> Does: Fire basic shell
## >> Input: None
# Create shell pieces
summon marker ~ ~ ~ {Tags:["IGSpawning","IGProjectile"],data:{IGProjectile:"pellet"}}
tp @e[tag=IGSpawning] ^ ^ ^1 facing ^ ^ ^2
tag @e remove IGSpawning
summon marker ~ ~ ~ {Tags:["IGSpawning","IGProjectile"],data:{IGProjectile:"pellet"}}
tp @e[tag=IGSpawning] ^0.2 ^ ^1 facing ^0.4 ^ ^2
tag @e remove IGSpawning
summon marker ~ ~ ~ {Tags:["IGSpawning","IGProjectile"],data:{IGProjectile:"pellet"}}
tp @e[tag=IGSpawning] ^-0.2 ^ ^1 facing ^-0.4 ^ ^2
tag @e remove IGSpawning
summon marker ~ ~ ~ {Tags:["IGSpawning","IGProjectile"],data:{IGProjectile:"pellet"}}
tp @e[tag=IGSpawning] ^ ^0.2 ^1 facing ^ ^0.4 ^2
tag @e remove IGSpawning
summon marker ~ ~ ~ {Tags:["IGSpawning","IGProjectile"],data:{IGProjectile:"pellet"}}
tp @e[tag=IGSpawning] ^ ^-0.2 ^1 facing ^ ^-0.4 ^2
tag @e remove IGSpawning
# Play sound
playsound entity.generic.explode player @a ~ ~ ~ 1.8 1.8
playsound entity.iron_golem.hurt player @a ~ ~ ~ 1.8 1.8