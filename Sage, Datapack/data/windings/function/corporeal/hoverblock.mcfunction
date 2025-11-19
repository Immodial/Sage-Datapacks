## >> From: windings:corporeal
## >> At: Hovering block from Alternate Emerald
## >> As: Hovering block from Alternate Emerald
## >> Does: Support players and vanish when blocks are placed
## >> Input: None
execute unless block ~ ~ ~ structure_void unless block ~ ~ ~ barrier run return run kill @s
particle happy_villager ~ ~ ~ 0.075 0.075 0.075 0 2
particle dust{color:[0.2d,0.85d,0.4d],scale:1} ~ ~ ~ 0.2 0.025 0.2 0 12
execute positioned ~-0.5 ~-1 ~-0.5 if entity @a[dx=0,dy=2,dz=0] at @s run return run setblock ~ ~ ~ barrier strict
setblock ~ ~ ~ structure_void strict