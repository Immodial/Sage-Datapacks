## >> From: apoca:loop/creeper
## >> At: Any creeper
## >> As: Any creeper
## >> Does: Give creeper special stats
## >> Input: None
# Reduce health and increase speed
attribute @s max_health base set 12
attribute @s movement_speed base set 0.3
# Reduce explosion radius and timer
data modify entity @s ExplosionRadius set value 2b
data modify entity @s Fuse set value 20s
# Mark as given stats
tag @s add APOCModified
# Be baby, so smaller and faster and smaller radius with even shorter fuse
execute unless predicate {"condition":"random_chance","chance":0.125} run return fail
attribute @s scale base set 0.4
attribute @s movement_speed base set 0.45
data modify entity @s ExplosionRadius set value 1b
data modify entity @s Fuse set value 15s