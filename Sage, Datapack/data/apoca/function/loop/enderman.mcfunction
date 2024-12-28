## >> From: apoca:tick
## >> At: Any enderman
## >> As: Any enderman
## >> Does: Run enderman modifiers
## >> Input: None
# Apply stats
execute if entity @s[tag=!APOCModified] run function apoca:stats/enderman
# Don't tilt head too much
rotate @s[x_rotation=20..90] ~ 19
rotate @s[x_rotation=-90..-20] ~ -19
# Update hat
execute on passengers run rotate @s[tag=APOCEnderHat] ~ 0
execute if function apoca:special/targeting on passengers run return run data modify entity @n[type=item_display,tag=APOCEnderHat] transformation.translation[1] set value 0.15f
execute on passengers run data modify entity @n[type=item_display,tag=APOCEnderHat] transformation.translation[1] set value -0.3f