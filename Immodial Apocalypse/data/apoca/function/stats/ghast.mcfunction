## >> From: apoca:loop/ghast
## >> At: Any ghast
## >> As: Any ghast
## >> Does: Give ghast special stats
## >> Input: None
# Give bonus health
attribute @s max_health base set 30
data modify entity @s Health set value 30
# Mark as given stats
tag @s add APOCModified