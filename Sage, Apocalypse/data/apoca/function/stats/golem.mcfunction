## >> From: apoca:loop/golem
## >> At: Any iron golem
## >> As: Any iron golem
## >> Does: Give iron golem special stats
## >> Input: None
# Give fire immunity, armor, and modify movement values
effect give @s fire_resistance infinite 0 true
attribute @s armor base set 12
attribute @s armor_toughness base set 5
attribute @s water_movement_efficiency base set 1
attribute @s knockback_resistance base set 0.8
# Mark as given stats
tag @s add APOCModified