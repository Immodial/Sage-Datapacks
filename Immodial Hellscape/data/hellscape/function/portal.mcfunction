## >> From: hellscape:loop
## >> At: Portal block marker
## >> As: Portal block marker
## >> Does: Cause magical portal badness
## >> Input: None
# Play sound
execute if entity @s[tag=HSNewPortal] run playsound block.respawn_anchor.set_spawn block @a ~ ~ ~ 3 1.4
tag @s remove HSNewPortal
# Expand portal marking
execute positioned ~1 ~ ~ if block ~ ~ ~ nether_portal unless entity @e[tag=HSPortal,distance=..0.1] run summon marker ~ ~ ~ {Tags:["HSPortal","HSNewPortal"]}
execute positioned ~-1 ~ ~ if block ~ ~ ~ nether_portal unless entity @e[tag=HSPortal,distance=..0.1] run summon marker ~ ~ ~ {Tags:["HSPortal","HSNewPortal"]}
execute positioned ~ ~1 ~ if block ~ ~ ~ nether_portal unless entity @e[tag=HSPortal,distance=..0.1] run summon marker ~ ~ ~ {Tags:["HSPortal","HSNewPortal"]}
execute positioned ~ ~-1 ~ if block ~ ~ ~ nether_portal unless entity @e[tag=HSPortal,distance=..0.1] run summon marker ~ ~ ~ {Tags:["HSPortal","HSNewPortal"]}
execute positioned ~ ~ ~1 if block ~ ~ ~ nether_portal unless entity @e[tag=HSPortal,distance=..0.1] run summon marker ~ ~ ~ {Tags:["HSPortal","HSNewPortal"]}
execute positioned ~ ~ ~-1 if block ~ ~ ~ nether_portal unless entity @e[tag=HSPortal,distance=..0.1] run summon marker ~ ~ ~ {Tags:["HSPortal","HSNewPortal"]}
# Show particle
particle ash ~ ~ ~ 0.25 0.25 0.25 0 50
# Delete if no portal remains
execute unless block ~ ~ ~ nether_portal if loaded ~ ~ ~ run playsound block.respawn_anchor.deplete block @a ~ ~ ~ 3 0.4
execute unless block ~ ~ ~ nether_portal if loaded ~ ~ ~ run kill @s