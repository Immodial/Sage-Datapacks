## >> From: apoca:special/setknockback
## >> At: None
## >> As: Any entity
## >> Does: Apply modifier based on knockback value
## >> Input: KnockbackProportion (float)
attribute @s attack_knockback modifier remove apoca:damage_based_knockback
$attribute @s attack_knockback modifier add apoca:damage_based_knockback $(KnockbackProportion) add_value