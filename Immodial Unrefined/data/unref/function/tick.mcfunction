## >> From: unref:init, unref:tick
## >> At: None
## >> As: Server
## >> Does: Apply special refining and make give unrefined items data
## >> Input: None
# Replace items on ground and in player inventory
execute as @a if items entity @s container.* #unref:refineable[!custom_data] run function unref:invfix
execute as @e[type=item] at @s run function unref:itemeffects
# Loop
schedule function unref:tick 1