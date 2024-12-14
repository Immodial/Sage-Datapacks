## >> From: apoca:tick
## >> At: Any phantom
## >> As: Any phantom
## >> Does: Run phantom modifiers
## >> Input: None
# Apply stats
execute if entity @s[tag=!APOCModified] run function apoca:stats/phantom
# Blast nearby player
execute on target positioned ~-10 ~-10 ~-10 if entity @s[dx=19,dy=19,dz=19] positioned ~10 ~10 ~10 run tag @n[type=phantom] add APOCBlastCharging
execute if entity @s[tag=APOCBlastCharging] run scoreboard players add @s APOCChargeTime 1
execute unless entity @s[tag=APOCBlastCharging] run scoreboard players reset @s APOCChargeTime
tag @s remove APOCBlastCharging
execute if score @s APOCChargeTime matches 20 run playsound entity.phantom.death hostile @a ~ ~ ~ 1 1.2
execute if score @s APOCChargeTime matches 50 run playsound entity.phantom.death hostile @a ~ ~ ~ 1 1.4
execute if score @s APOCChargeTime matches 70 run playsound entity.phantom.death hostile @a ~ ~ ~ 1 1.6
execute if score @s APOCChargeTime matches 70.. run particle item{item:{id:"minecraft:phantom_membrane"}} ^ ^-1 ^1 0.3 0.3 0.3 0 5
execute if score @s APOCChargeTime matches 80 run playsound entity.phantom.death hostile @a ~ ~ ~ 1 2
execute if score @s APOCChargeTime matches 90.. on target facing entity @s eyes run function apoca:special/phantasneeze
scoreboard players reset @s[scores={APOCChargeTime=90..}] APOCChargeTime
# Fly away in daytime
execute if predicate apoca:daytime positioned ~ 225 ~ if entity @s[dy=1000] run particle item{item:{id:"minecraft:phantom_membrane"}} ^ ^ ^2 1 1 1 0 200 force
execute if predicate apoca:daytime positioned ~ 225 ~ if entity @s[dy=1000] run tp @s ~ -1000 ~
execute if predicate apoca:daytime run return run data modify entity @s Motion[1] set value 0.5d
# Accelerate
execute store result entity @s Motion[0] double 0.00011 run data get entity @s Motion[0] 10000
execute store result entity @s Motion[2] double 0.00011 run data get entity @s Motion[2] 10000
execute unless entity @p[distance=..30] run return fail
execute store result entity @s Motion[0] double 0.00011 run data get entity @s Motion[0] 10000
execute store result entity @s Motion[2] double 0.00011 run data get entity @s Motion[2] 10000