## >> From: hellscape:init, hellscape:loop
## >> At: None
## >> As: Server
## >> Does: Update nether effects
## >> Input: None
# Mark portals
execute at @e if block ~ ~ ~ nether_portal align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=HSPortal,distance=..0.1] run summon marker ~ ~ ~ {Tags:["HSPortal","HSNewPortal"]}
# Run portal loop
execute as @e[tag=HSPortal] at @s run function hellscape:portal
# Pull mobs
tag @e remove HSPulling
execute as @e[type=#hellscape:interactable] at @s unless dimension the_nether unless entity @e[tag=HSPortal,distance=..0.75] at @n[tag=HSPortal,distance=..12] facing entity @s eyes run function hellscape:pull
# Remove attributes from mobs not
execute as @e[tag=HSPulled,tag=!HSPulling] run function hellscape:degravity
# Recover stability
scoreboard players remove @e[type=#hellscape:interactable,scores={HSInstability=1..}] HSInstability 1
# Remove stability from entities in/near portals
execute as @e[type=#hellscape:interactable] at @s if dimension overworld if entity @e[tag=HSPortal,distance=..12] run scoreboard players add @s HSInstability 2
execute as @e[type=#hellscape:interactable] at @s if dimension overworld if entity @e[tag=HSPortal,distance=..1] run scoreboard players add @s HSInstability 5
# Particle & damage unstable entities
execute as @e[scores={HSInstability=100..}] at @s anchored eyes run particle reverse_portal ^ ^ ^0.5 0.3 0.3 0.3 1 3
execute as @e[scores={HSInstability=100..}] at @s run playsound block.portal.travel player @s ~ ~ ~ 0.02 2
execute as @e[scores={HSInstability=120..}] run damage @s 1 hellscape:portal
execute as @e[scores={HSInstability=120..}] run scoreboard players remove @s HSInstability 8
# Loop
schedule function hellscape:loop 3