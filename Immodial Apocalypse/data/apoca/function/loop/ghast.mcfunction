## >> From: apoca:tick
## >> At: Any ghast
## >> As: Any ghast
## >> Does: Run ghast modifiers
## >> Input: None
# Apply stats
execute if entity @s[tag=!APOCModified] run function apoca:stats/ghast
# Smash
execute positioned ~-2 ~-100 ~-2 if entity @a[dx=3,dy=120,dz=3] unless function apoca:random/16 run tag @s add APOCDropping
execute unless entity @s[tag=APOCDropping] run return fail
effect give @s resistance 1 2
execute if block ~ ~-1 ~ air run return run tp @s ~ ~-1 ~
tag @s remove APOCDropping
particle gust ~ ~1 ~ 2.5 0 2.5 0 100
tag @s add APOCSmashing
execute positioned ~-2.5 ~ ~-2.5 as @e[dx=4,dy=1,dz=3] run damage @s 12 mace_smash by @n[tag=APOCSmashing]
tag @s remove APOCSmashing