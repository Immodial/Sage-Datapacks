## >> From: seated:init, seated:loop
## >> At: None
## >> As: Server
## >> Does: Loop deleting unused seats and updating player sit status
## >> Input: None
execute as @a at @s run function seated:player
execute as @e[type=item_display,tag=STDSeat] unless function seated:saton run kill @s
# Loop
schedule function seated:loop 1