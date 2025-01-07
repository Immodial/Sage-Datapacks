## >> From: seated:player
## >> At: Player who just woke up
## >> As: Player who just woke up
## >> Does: Sit on bed
## >> Input: None
tag @s remove STDSleeping
summon item_display ~ ~ ~ {Tags:["STDSeat","STDSeating"]}
execute store result entity @n[tag=STDSeating] Pos[0] double 1 run scoreboard players get @s STDSleepPosX
execute store result entity @n[tag=STDSeating] Pos[1] double 1 run scoreboard players get @s STDSleepPosY
execute store result entity @n[tag=STDSeating] Pos[2] double 1 run scoreboard players get @s STDSleepPosZ
execute as @n[tag=STDSeating] at @s run tp @s ~0.5 ~0.55 ~0.5
execute at @n[tag=STDSeating] unless block ~ ~ ~ #minecraft:beds run return run tag @e[type=item_display] remove STDSeating
execute as @n[tag=STDSeating] at @s if block ~ ~ ~ #minecraft:beds[facing=north] run tp @s ~ ~ ~1
execute as @n[tag=STDSeating] at @s if block ~ ~ ~ #minecraft:beds[facing=south] run tp @s ~ ~ ~-1
execute as @n[tag=STDSeating] at @s if block ~ ~ ~ #minecraft:beds[facing=east] run tp @s ~-1 ~ ~
execute as @n[tag=STDSeating] at @s if block ~ ~ ~ #minecraft:beds[facing=west] run tp @s ~1 ~ ~
execute at @n[tag=STDSeating] if block ~ ~ ~ #minecraft:beds[facing=north] run rotate @s 0 ~
execute at @n[tag=STDSeating] if block ~ ~ ~ #minecraft:beds[facing=south] run rotate @s 180 ~
execute at @n[tag=STDSeating] if block ~ ~ ~ #minecraft:beds[facing=east] run rotate @s 90 ~
execute at @n[tag=STDSeating] if block ~ ~ ~ #minecraft:beds[facing=west] run rotate @s 270 ~
ride @s mount @n[type=item_display,tag=STDSeating]
tag @e[type=item_display] remove STDSeating