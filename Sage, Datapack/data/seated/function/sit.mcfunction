## >> From: seated:player, seated:sit
## >> At: Player who crouched in quick succession, then jumped back
## >> As: Player who crouched in quick succession, then jumped back
## >> Does: Sit down
## >> Input: None
execute align xyz positioned ~0.5 ~ ~0.5 if entity @n[type=item_display,tag=STDSeat,distance=..0.5] run return fail
execute if block ~ ~ ~ #air if block ~ ~-1 ~ #air run return fail
execute unless block ~ ~ ~ #minecraft:stairs[half=bottom] positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:stairs[half=bottom] run return run function seated:sit
scoreboard players reset @s STDCrouchPower
execute align xyz run summon item_display ~0.5 ~0.05 ~0.5 {Tags:["STDSeat","STDSeating"]}
execute if block ~ ~ ~ #seated:half align xyz run tp @n[tag=STDSeating] ~0.5 ~0.5 ~0.5
execute if block ~ ~ ~ #minecraft:stairs[half=bottom] align xyz positioned ~0.5 ~0.5 ~0.5 run function seated:stairalign
ride @s mount @n[type=item_display,tag=STDSeating]
tag @e[type=item_display] remove STDSeating