## >> From: lorem:init, lorem:tick
## >> At: None
## >> As: Server
## >> Does: Run item lore loops
## >> Input: None
# Loop
schedule function lorem:tick 1
# Make sure advancement is removed
advancement revoke @a only lorem:use
# Stop multi-use
tag @a[tag=!LMUsing] remove LMUsed
tag @a remove LMUsing