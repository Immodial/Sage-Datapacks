## >> From: journey:loop
## >> At: Any player
## >> As: Any player
## >> Does: Apply speed on path blocks
## >> Input: None
advancement revoke @s only journey:constant
# Move faster on paths
execute if predicate journey:on_path run attribute @s movement_speed modifier add journey:path_bonus 0.1 add_multiplied_base
execute unless predicate journey:on_path run attribute @s movement_speed modifier remove journey:path_bonus
# Step up instantly when sprinting
execute if predicate journey:path_stepup if predicate journey:sprinting run attribute @s step_height modifier add journey:path_bonus 1.8 add_multiplied_base
execute unless predicate journey:path_stepup run attribute @s step_height modifier remove journey:path_bonus
execute unless predicate journey:sprinting run attribute @s step_height modifier remove journey:path_bonus