## >> From: apoca:loop/player
## >> At: Grave being expended
## >> As: Grave being expended
## >> Does: Drop items in grave
## >> Input: None
summon item ~ ~ ~ {Tags:["APOCGraveDropping"],Item:{id:"minecraft:cobblestone",count:1}}
data modify entity @n[type=item,tag=APOCGraveDropping] Item set from entity @s data.GraveItems[0]
data remove entity @s data.GraveItems[0]
tag @n[type=item,tag=APOCGraveDropping] remove APOCGraveDropping
execute if data entity @s data.GraveItems[0] run function apoca:special/gravedrop
kill @s