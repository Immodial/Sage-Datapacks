## >> From: apoca:tick
## >> At: Any zombie
## >> As: Any zombie
## >> Does: Run zombie modifiers
## >> Input: None
# Give immunity to fire, super spawn rates, base armor, and increased follow range
attribute @s generic.burning_time base set 0
attribute @s zombie.spawn_reinforcements base set 0.4
attribute @s generic.armor base set 6
attribute @s generic.follow_range base set 45
# Make able to break doors
data modify entity @s CanBreakDoors set value 1b
# Mark as given stats
tag @s add APOCModified