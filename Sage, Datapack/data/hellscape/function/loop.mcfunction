## >> From: hellscape:init, hellscape:loop
## >> At: None
## >> As: Server
## >> Does: Update player states
## >> Input: None
# Player loop
execute as @a at @s run function hellscape:player
# Create portals and apply special effects
execute at @e[type=!#hellscape:nonportaling] if block ~ ~ ~ nether_portal align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=HSPortal,distance=..0.1] run summon marker ~ ~ ~ {Tags:["HSPortal","HSNewPortal"]}
execute as @e[tag=HSPortal] at @s run function hellscape:portal
# Loop
schedule function hellscape:loop 2