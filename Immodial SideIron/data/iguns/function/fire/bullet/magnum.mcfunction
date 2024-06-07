## >> From: iguns:fire/call
## >> At: Player firing a gun
## >> As: Player firing a gun
## >> Does: Fire basic bullet
## >> Input: None
# Create bullet
summon marker ~ ~ ~ {Tags:["IGSpawning","IGProjectile"],data:{IGProjectile:"pellet"}}
tp @e[tag=IGSpawning] ^ ^ ^1 facing ^ ^ ^2
tag @e remove IGSpawning
# Play sound
playsound entity.blaze.hurt player @a ~ ~ ~ 1.8 1.4
playsound entity.iron_golem.hurt player @a ~ ~ ~ 1.8 1.8