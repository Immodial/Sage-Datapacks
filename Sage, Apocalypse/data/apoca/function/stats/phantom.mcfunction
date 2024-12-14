## >> From: apoca:loop/phantom
## >> At: Any phantom
## >> As: Any phantom
## >> Does: Give phantom special stats
## >> Input: None
# Increase size and set
data modify entity @s Size set value 14
attribute @s attack_damage base set 12
attribute @s max_health base set 80
data modify entity @s Health set value 80
attribute @s follow_range base set 50
# Mark as given stats
tag @s add APOCModified