## >> From: apoca:loop/ghast
## >> At: Any ghast
## >> As: Any ghast
## >> Does: Give ghast special stats
## >> Input: None
# Give bonus health
attribute @s max_health base set 60
data modify entity @s Health set value 60
data modify entity @s ExplosionPower set value 2b
# Mark as given stats
tag @s add APOCModified