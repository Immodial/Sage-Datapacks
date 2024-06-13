## >> From: apoca:loop/spider
## >> At: Any spider
## >> As: Any spider
## >> Does: Give spider special stats
## >> Input: None
# Give base armor, low max health, and high speed + jump
attribute @s generic.armor base set 4
attribute @s generic.max_health base set 6
attribute @s generic.movement_speed base set 0.4
attribute @s generic.jump_strength base set 0.65
# Mark as given stats
tag @s add APOCModified
# Apply weaving or make more spiders
execute if function apoca:random/5 run return run effect give @s weaving infinite 0
execute if function apoca:random/5 run summon spider
execute if function apoca:random/5 run summon spider
execute if function apoca:random/5 run summon spider