## >> From: apoco:tick
## >> At: Any zombie
## >> As: Any zombie
## >> Does: Run zombie modifiers
## >> Input: None
# Give base armor, and increased follow range
attribute @s generic.armor base set 10
attribute @s generic.follow_range base set 60
# Get basic weapon
execute if function apoco:random/8 run item replace entity @s weapon.mainhand with stone_sword
# Mark as given stats
tag @s add APOCModified