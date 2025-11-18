## >> From: apoca:tick
## >> At: Any creaking
## >> As: Any creaking
## >> Does: Run creaking modifiers
## >> Input: None
# Apply stats
execute if entity @s[tag=!APOCModified] run function apoca:stats/creaking
# Inflict blinding on targets
tag @s add APOCBlinding
execute as @a[distance=..5] if function apoca:special/creaked run effect give @s blindness 20 0
tag @s remove APOCBlinding
# Attack nearby normal mobs when moving
execute if predicate apoca:in_liquid run return fail
execute store result score _HorizontalMotion APOCGlobals run data get entity @s Motion[0] 100
execute if score _HorizontalMotion APOCGlobals matches 0 run return run scoreboard players reset _HorizontalMotion APOCGlobals
execute store result score _HorizontalMotion APOCGlobals run data get entity @s Motion[2] 100
execute if score _HorizontalMotion APOCGlobals matches 0 run return run scoreboard players reset _HorizontalMotion APOCGlobals
scoreboard players reset _HorizontalMotion APOCGlobals
tp @s @n[type=!creaking,type=!#apoca:creaking_telekill_ignored,distance=2..5]
damage @n[type=!creaking,type=!#apoca:creaking_telekill_ignored,type=!#apoca:creaking_hates,distance=..5] 8 mob_attack by @s
damage @n[type=#apoca:creaking_hates,distance=..5] 12 mob_attack by @s