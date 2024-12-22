## >> From: apoca:tick
## >> At: Any ghast
## >> As: Any ghast
## >> Does: Run ghast modifiers
## >> Input: None
# Apply stats
execute if entity @s[tag=!APOCModified] run function apoca:stats/ghast
# Dash toward far-away players
execute if function apoca:special/targeting unless function apoca:random/48 run function apoca:special/ghastdash
# Puff back to previous height
scoreboard players remove @s APOCChargeTime 1
execute if score @s APOCChargeTime matches 1 run particle gust ~ ~32 ~ 1.2 10 1.2 0 20 force
execute if score @s APOCChargeTime matches 1 store result entity @s Pos[1] double 0.01 run scoreboard players get @s APOCSlamHeight
# Store slam height for when above a player, then slam
execute positioned ~-2 ~-100 ~-2 if entity @a[dx=3,dy=120,dz=3] unless function apoca:random/16 run tag @s add APOCDropping
execute unless entity @s[tag=APOCDropping] run return run execute unless score @s APOCChargeTime matches 1.. store result score @s APOCSlamHeight run data get entity @s Pos[1] 100
# Apply resistance and fall while slamming
effect give @s resistance 1 2
execute if block ~ ~-1 ~ air run return run tp @s ~ ~-1 ~
# If unable to continue falling, do a smash and return to previous height
tag @s remove APOCDropping
particle gust ~ ~1 ~ 2.5 0 2.5 0 100
scoreboard players set @s APOCChargeTime 30
tag @s add APOCSlamming
execute positioned ~-2.5 ~ ~-2.5 as @e[type=!item,tag=!APOCSlamming,dx=4,dy=1,dz=3] run damage @s 12 mace_smash by @n[tag=APOCSlamming]
tag @s remove APOCSlamming