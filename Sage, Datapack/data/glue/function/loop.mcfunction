## >> From: glue:init, glue:loop
## >> At: None
## >> As: Server
## >> Does: Loop merge slabs together
## >> Input: None
# Loop
schedule function glue:loop 15
# Merge around players
execute as @a at @s run function glue:merge