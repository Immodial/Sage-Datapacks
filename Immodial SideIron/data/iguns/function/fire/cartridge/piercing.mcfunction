## >> From: iguns:fire/call
## >> At: Player firing a gun
## >> As: Player firing a gun
## >> Does: Fire basic bullet
## >> Input: None
# Create bullet
summon marker ~ ~ ~ {Tags:["IGSpawning","IGProjectile"],data:{IGProjectile:"piercecartridge"}}
tp @e[tag=IGSpawning] ^ ^ ^1 facing ^ ^ ^2
tag @e remove IGSpawning
# Play sound
playsound entity.blaze.hurt player @a ~ ~ ~ 1.8 0.6
playsound block.copper_bulb.place player @a ~ ~ ~ 1.8 0.2