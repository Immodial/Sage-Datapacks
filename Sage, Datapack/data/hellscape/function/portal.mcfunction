## >> From: hellscape:loop
## >> At: Any portal block
## >> As: Any portal block
## >> Does: Apply portal effects
## >> Input: None
# Show particle
particle ash ~ ~ ~ 0.25 0.25 0.25 0 8
# Clear players of nausea in portal
effect clear @a[distance=..1] nausea
# Delete if no portal remains
execute unless block ~ ~ ~ nether_portal if loaded ~ ~ ~ run playsound block.respawn_anchor.deplete block @a ~ ~ ~ 3 0.4
execute unless block ~ ~ ~ nether_portal if loaded ~ ~ ~ run return run kill @s
# Play sound
execute unless entity @s[tag=HSNewPortal] run return fail
playsound block.respawn_anchor.set_spawn block @a ~ ~ ~ 3 1.4
tag @s remove HSNewPortal
# Expand portal marking
execute align xyz positioned ~1.5 ~0.5 ~0.5 if block ~ ~ ~ nether_portal unless entity @e[tag=HSPortal,distance=..0.1] run summon marker ~ ~ ~ {Tags:["HSPortal","HSNewPortal"]}
execute align xyz positioned ~-0.5 ~0.5 ~0.5 if block ~ ~ ~ nether_portal unless entity @e[tag=HSPortal,distance=..0.1] run summon marker ~ ~ ~ {Tags:["HSPortal","HSNewPortal"]}
execute align xyz positioned ~0.5 ~1.5 ~0.5 if block ~ ~ ~ nether_portal unless entity @e[tag=HSPortal,distance=..0.1] run summon marker ~ ~ ~ {Tags:["HSPortal","HSNewPortal"]}
execute align xyz positioned ~0.5 ~-0.5 ~0.5 if block ~ ~ ~ nether_portal unless entity @e[tag=HSPortal,distance=..0.1] run summon marker ~ ~ ~ {Tags:["HSPortal","HSNewPortal"]}
execute align xyz positioned ~0.5 ~0.5 ~1.5 if block ~ ~ ~ nether_portal unless entity @e[tag=HSPortal,distance=..0.1] run summon marker ~ ~ ~ {Tags:["HSPortal","HSNewPortal"]}
execute align xyz positioned ~0.5 ~0.5 ~-0.5 if block ~ ~ ~ nether_portal unless entity @e[tag=HSPortal,distance=..0.1] run summon marker ~ ~ ~ {Tags:["HSPortal","HSNewPortal"]}