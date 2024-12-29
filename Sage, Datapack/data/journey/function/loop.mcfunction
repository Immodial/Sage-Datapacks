## >> From: journey:init, journey:loop
## >> At: None
## >> As: Server
## >> Does: Loop as all palyers
## >> Input: None
execute as @a at @s run function journey:player
execute as @e[type=item_display,tag=JNYPlane] at @s run function journey:plane
execute as @e[tag=JNYPlaneSpawn] at @s run function journey:makeplane
# Loop
schedule function journey:loop 3