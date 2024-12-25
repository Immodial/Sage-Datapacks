## >> From: journey:loop
## >> At: Any player
## >> As: Any player
## >> Does: Apply speed on path blocks
## >> Input: None
execute if function journey:pathcheck run return run attribute @s movement_speed modifier add journey:path_bonus 0.1 add_multiplied_base
attribute @s movement_speed modifier remove journey:path_bonus