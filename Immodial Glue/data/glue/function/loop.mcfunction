## >> From: glue:init, glue:loop
## >> At: None
## >> As: Server
## >> Does: Loop merge slabs together
## >> Input: None
execute as @a at @s run function glue:merge
# Loop
schedule function glue:loop 15