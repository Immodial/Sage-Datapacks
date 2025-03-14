## >> From: apoca:loop/spider
## >> At: Any spider
## >> As: Any spider
## >> Does: Give spider special stats
## >> Input: None
# Give 
attribute @s scale base set 0.5
attribute @s max_health base set 8
attribute @s movement_speed base set 0.2
attribute @s jump_strength base set 0.65
# Mark as given stats
tag @s add APOCModified
# Apply weaving or make more spiders
execute if predicate {"condition":"random_chance","chance":0.2} run return run effect give @s weaving infinite 0
execute if predicate {"condition":"random_chance","chance":0.2} run summon spider
execute if predicate {"condition":"random_chance","chance":0.2} run summon spider
execute if predicate {"condition":"random_chance","chance":0.2} run summon spider