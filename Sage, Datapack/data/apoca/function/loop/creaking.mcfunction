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