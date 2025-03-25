## >> From: journey:loop
## >> At: Any plane
## >> As: Any plane
## >> Does: Apply speed on path blocks
## >> Input: None
execute on passengers if data entity @s[tag=JNYSeatInteraction] interaction on target run ride @s mount @n[tag=JNYPlane]
execute on passengers run data remove entity @s[tag=JNYSeatInteraction] interaction
# If nobody is inside, fall
execute unless function journey:passengercheck positioned ~ ~-0.5 ~ if block ~ ~-0.2 ~ #air run tp @s ~ ~0.3 ~ ~ 0
# Increment or reset flight time
execute unless function journey:passengercheck run return run scoreboard players reset @s JNYFlightTime
scoreboard players add @s JNYFlightTime 1
# Rotate propeller and plane
execute on passengers if entity @s[tag=JNYPropeller] run function journey:propeller
# Orient plane
execute rotated as @s on passengers if entity @s[type=player] if predicate journey:forwards as @n[type=item_display,tag=JNYPlane] run rotate @s[x_rotation=-30..90] ~ ~-10
execute rotated as @s on passengers if entity @s[type=player] if predicate journey:backwards as @n[type=item_display,tag=JNYPlane] run rotate @s[x_rotation=-90..40] ~ ~10
execute rotated as @s on passengers if entity @s[type=player] if predicate journey:left as @n[type=item_display,tag=JNYPlane] run rotate @s ~-10 ~
execute rotated as @s on passengers if entity @s[type=player] if predicate journey:right as @n[type=item_display,tag=JNYPlane] run rotate @s ~10 ~
execute rotated as @s[x_rotation=0..90] positioned ~ ~-0.7 ~ unless block ~ ~-0.2 ~ #air run rotate @s ~ 0
execute unless entity @s[scores={JNYFlightTime=100..}] rotated as @s run rotate @s ~ 0
execute on passengers if entity @s[tag=JNYPropeller] run rotate @s ~ ~
# Play flight sounds
execute if score @s JNYFlightTime matches 0..29 run playsound entity.breeze.idle_ground neutral @a ~ ~ ~ 0.15 0.8
execute if score @s JNYFlightTime matches 30..99 run playsound entity.breeze.idle_ground neutral @a ~ ~ ~ 0.2 1
execute if score @s JNYFlightTime matches 100..239 run playsound entity.breeze.idle_ground neutral @a ~ ~ ~ 0.3 1.6
execute if score @s JNYFlightTime matches 240.. run playsound entity.breeze.idle_ground neutral @a ~ ~ ~ 0.4 2
# Fly!
execute at @s run tp @s ^ ^ ^0.2
execute at @s[scores={JNYFlightTime=30..}] run tp @s ^ ^ ^0.3
execute at @s[scores={JNYFlightTime=..100}] positioned ~ ~-0.5 ~ if block ~ ~-0.1 ~ #air run tp @s ~ ~0.4 ~
execute at @s[scores={JNYFlightTime=100..}] run tp @s ^ ^ ^0.5
execute at @s[scores={JNYFlightTime=140..}] run tp @s ^ ^ ^0.2
execute at @s[scores={JNYFlightTime=180..}] run tp @s ^ ^ ^0.2
execute at @s[scores={JNYFlightTime=240..}] run tp @s ^ ^ ^0.5
# Destroy if block is destroyed
execute at @s if block ~ ~-0.5 ~ #air run return fail
summon item ~ ~ ~ {Item:{id:"minecraft:cod_spawn_egg",count:1,components:{"minecraft:item_name":[{"translate":"item.journey.plane"}],"minecraft:item_model":"journey:plane_item","!max_stack_size":{},"minecraft:entity_data":{id:"minecraft:marker",Tags:["JNYPlaneSpawn"]}}}}
execute on passengers run kill @s[tag=JNYPropeller]
execute on passengers run kill @s[tag=JNYSeatInteraction]
kill @s