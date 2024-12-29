## >> From: journey:loop
## >> At: Plane spawn marker
## >> As: Plane spawn marker
## >> Does: Create plane entity
## >> Input: None
summon item_display ~ ~0.7 ~ {Tags:["JNYPlane","JNYPlaneMaking"],item:{id:"minecraft:oak_planks",count:1,components:{"minecraft:item_model":"journey:plane"}},Passengers:[{id:"minecraft:interaction",width:0.8f,height:0.5f,Tags:["JNYSeatInteraction"]},{id:"minecraft:item_display",Tags:["JNYPropeller","JNYFrame1","JNYPropellerMaking"],item:{id:"minecraft:diamond",count:1,components:{"minecraft:item_model":"journey:propeller"}}}]}
ride @n[type=item_display,tag=JNYPlaneMaking] mount @s
data modify entity @n[type=item_display,tag=JNYPlaneMaking] transformation.scale set value [2f,2f,2f]
data modify entity @n[type=item_display,tag=JNYPlaneMaking] transformation.translation set value [0f,0.6f,-0.5f]
data modify entity @n[type=item_display,tag=JNYPlaneMaking] teleport_duration set value 3
data modify entity @n[type=item_display,tag=JNYPropellerMaking] transformation.translation set value [0f,0.1f,0.65f]
data modify entity @n[type=item_display,tag=JNYPropellerMaking] interpolation_duration set value 3
data modify entity @n[type=item_display,tag=JNYPropellerMaking] teleport_duration set value 3
execute rotated as @p[gamemode=!spectator] run rotate @n[type=item_display,tag=JNYPlaneMaking] ~ 0
execute rotated as @p[gamemode=!spectator] run rotate @n[type=item_display,tag=JNYPropellerMaking] ~ 0
tag @e[type=item_display] remove JNYPlaneMaking
tag @e[type=item_display] remove JNYPropellerMaking
kill @s