## >> From: apoca:tick
## >> At: Any ghast
## >> As: Any ghast
## >> Does: Run ghast modifiers
## >> Input: None
# Apply stats
execute if entity @s[tag=!APOCModified] run function apoca:stats/fireball
# Charge up
scoreboard players add @s APOCChargeTime 1
scoreboard players add @s APOCParticleTime 1
execute unless score @s APOCChargeTime matches 20.. unless score @s APOCParticleTime matches 10 run return fail
execute rotated as @n[type=ghast] run particle campfire_cosy_smoke ^ ^1 ^
execute rotated as @n[type=ghast] run particle campfire_cosy_smoke ^0.5 ^0.865 ^
execute rotated as @n[type=ghast] run particle campfire_cosy_smoke ^0.7 ^0.7 ^
execute rotated as @n[type=ghast] run particle campfire_cosy_smoke ^0.865 ^0.5 ^
execute rotated as @n[type=ghast] run particle campfire_cosy_smoke ^1 ^ ^
execute rotated as @n[type=ghast] run particle campfire_cosy_smoke ^0.865 ^-0.5 ^
execute rotated as @n[type=ghast] run particle campfire_cosy_smoke ^0.7 ^-0.7 ^
execute rotated as @n[type=ghast] run particle campfire_cosy_smoke ^0.5 ^-0.865 ^
execute rotated as @n[type=ghast] run particle campfire_cosy_smoke ^ ^-1 ^
execute rotated as @n[type=ghast] run particle campfire_cosy_smoke ^-0.5 ^-0.865 ^
execute rotated as @n[type=ghast] run particle campfire_cosy_smoke ^-0.7 ^-0.7 ^
execute rotated as @n[type=ghast] run particle campfire_cosy_smoke ^-0.865 ^-0.5 ^
execute rotated as @n[type=ghast] run particle campfire_cosy_smoke ^-1 ^ ^
execute rotated as @n[type=ghast] run particle campfire_cosy_smoke ^-0.865 ^0.5 ^
execute rotated as @n[type=ghast] run particle campfire_cosy_smoke ^-0.7 ^0.7 ^
execute rotated as @n[type=ghast] run particle campfire_cosy_smoke ^-0.5 ^0.865 ^
scoreboard players reset @s APOCParticleTime
execute unless score @s APOCChargeTime matches 20 run return fail
playsound block.bell.use hostile @a ~ ~ ~ 10 0.1
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s APOCChargeX
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get @s APOCChargeY
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s APOCChargeZ