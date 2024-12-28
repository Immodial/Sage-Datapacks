## >> From: apoca:loop/enderman
## >> At: Any enderman
## >> As: Any enderman
## >> Does: Give enderman special stats
## >> Input: None
attribute @s armor base set 6
attribute @s max_health base set 80
data modify entity @s Health set value 80
# Create hat
summon item_display ~ ~ ~ {Tags:["APOCEnderHat","APOCHatting"],item_display:head,item:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:item_model":"ender:ender_hat_enderman"}}}
ride @n[type=item_display,tag=APOCHatting] mount @s
data modify entity @n[type=item_display,tag=APOCHatting] transformation.translation[1] set value -0.3f
data modify entity @n[type=item_display,tag=APOCHatting] teleport_duration set value 2
tag @e[type=item_display] remove APOCHatting
# Mark as given stats
tag @s add APOCModified