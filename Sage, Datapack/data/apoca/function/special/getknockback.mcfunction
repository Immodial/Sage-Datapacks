## >> From: apoca:states, apoca:player
## >> At: None
## >> As: Any entity
## >> Does: Store knockback value
## >> Input: None
execute store result storage apocalypse KnockbackProportion float 0.015 run attribute @s attack_damage get 10
function apoca:special/setknockback with storage apocalypse
data remove storage apocalypse KnockbackProportion