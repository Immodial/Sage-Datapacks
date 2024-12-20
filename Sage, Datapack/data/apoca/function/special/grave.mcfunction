## >> From: apoca:loop/player
## >> At: Dead player
## >> As: Dead player
## >> Does: Create grave
## >> Input: None
summon marker ~ ~1 ~ {Tags:["APOCGrave","APOCGraveSpawning"],data:{GraveMarker:true,GraveItems:[]}}
summon text_display ~ ~1 ~ {Tags:["APOCGraveName","APOCGraveNaming"],alignment:"center",billboard:"center"}
tag @s add APOCDeadNaming
data modify entity @n[type=text_display,tag=APOCGraveNaming] text set value '{"selector":"@p[tag=APOCDeadNaming]"}'
tag @s remove APOCDeadNaming
tag @n[type=item,distance=..3] add APOCCollecting
execute as @n[type=marker,tag=APOCGraveSpawning] at @s if entity @n[type=item,tag=APOCCollecting] run function apoca:special/graveadd
execute as @n[type=marker,tag=APOCGraveSpawning] unless data entity @s data.GraveItems[0] run kill @s
tag @n[type=marker,tag=APOCGraveSpawning] remove APOCGraveSpawning
tag @n[type=text_display,tag=APOCGraveNaming] remove APOCGraveNaming