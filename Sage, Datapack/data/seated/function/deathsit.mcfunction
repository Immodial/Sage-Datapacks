## >> From: seated:player
## >> At: Player who just died
## >> As: Player who just died
## >> Does: Give special effects and sit on bed (if that is the respawn)
## >> Input: None
effect give @s resistance 10 9
effect give @s fire_resistance 10 9
summon item_display ~ ~ ~ {Tags:["STDSeat","STDSeating"]}
execute unless data entity @s SpawnY run return run tag @e[type=item_display] remove STDSeating
execute store result entity @n[tag=STDSeating] Pos[0] double 1 run data get entity @s SpawnX
execute store result entity @n[tag=STDSeating] Pos[1] double 1 run data get entity @s SpawnY
execute store result entity @n[tag=STDSeating] Pos[2] double 1 run data get entity @s SpawnZ
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