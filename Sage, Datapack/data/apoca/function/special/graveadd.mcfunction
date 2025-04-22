## >> From: apoca:special/grave
## >> At: Grave being created
## >> As: Grave being created
## >> Does: Add items to grave
## >> Input: None
data modify entity @s data.GraveItems append from entity @n[type=item,tag=APOCCollecting] Item
kill @n[type=item,tag=APOCCollecting]
tag @n[type=item,distance=..3,nbt={Age:1s}] add APOCCollecting
execute if entity @n[type=item,tag=APOCCollecting] run function apoca:special/graveadd