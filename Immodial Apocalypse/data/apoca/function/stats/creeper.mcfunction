## >> From: apoca:loop/creeper
## >> At: Any creeper
## >> As: Any creeper
## >> Does: Give creeper special stats
## >> Input: None
# Reduce health and increase speed
attribute @s generic.max_health base set 8
attribute @s generic.movement_speed base set 0.35
# Reduce explosion radius and timer
data modify entity @s ExplosionRadius set value 2b
data modify entity @s Fuse set value 20s
# Mark as given stats
tag @s add APOCModified