## >> From: apoca:loop/skeleton
## >> At: Any skeleton
## >> As: Any skeleton
## >> Does: Give skeleton special stats
## >> Input: None
# Give increased follow range
attribute @s follow_range base set 60
# Get basic weapon
execute unless function apoca:random/8 run item replace entity @s weapon.mainhand with stone_sword
# Mark as given stats
tag @s add APOCModified