## >> From: indulge:init, indulge:tick
## >> At: None
## >> As: Server
## >> Does: Run item lore loops
## >> Input: None
# Loop
schedule function indulge:tick 1
# Reset use time
scoreboard players reset @a[tag=!IDLGUsing] IDLGUseTime
tag @a remove IDLGUsing