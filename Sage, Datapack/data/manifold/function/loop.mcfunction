## >> From: manifold:init, manifold:loop
## >> At: None
## >> As: Server
## >> Does: Update pillager and villager sentience
## >> Input: None
# Loop
schedule function manifold:loop 4
# Override illager behaviour when player is nearby
execute as @e[type=#illager] run data modify entity @s PersistenceRequired set value true
execute as @e[type=#illager] at @s unless entity @a[gamemode=!spectator,distance=..40] run function manifold:illager
execute as @e[type=bat,tag=MNFTarget] at @s run function manifold:target