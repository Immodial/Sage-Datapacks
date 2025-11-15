## >> From: apoca:states
## >> At: Any zombie
## >> As: Any zombie
## >> Does: Apply the corresponding buffs based on how big of a horde they're in
## >> Input: None
# Apply bonuses if in a crowd
execute if score @s APOCZombieDensity matches 3.. run attribute @s armor modifier add apoca:small_crowd_armor 4 add_value
execute if score @s APOCZombieDensity matches 6.. run attribute @s armor modifier add apoca:medium_crowd_armor 2 add_value
execute if score @s APOCZombieDensity matches 6.. run attribute @s attack_damage modifier add apoca:medium_crowd_damage 1 add_value
execute if score @s APOCZombieDensity matches 6.. run attribute @s knockback_resistance modifier add apoca:medium_crowd_resilience 0.3 add_value
execute if score @s APOCZombieDensity matches 9.. run attribute @s armor modifier add apoca:large_crowd_armor 3 add_value
execute if score @s APOCZombieDensity matches 9.. run attribute @s attack_damage modifier add apoca:large_crowd_damage 2 add_value
execute if score @s APOCZombieDensity matches 9.. run attribute @s attack_knockback modifier add apoca:large_crowd_knockback 2 add_value
execute if score @s APOCZombieDensity matches 9.. run attribute @s knockback_resistance modifier add apoca:large_crowd_resilience 0.5 add_value
# Remove those bonuses otherwise
execute unless score @s APOCZombieDensity matches 3.. run attribute @s armor modifier remove apoca:small_crowd_armor
execute unless score @s APOCZombieDensity matches 6.. run attribute @s armor modifier remove apoca:medium_crowd_armor
execute unless score @s APOCZombieDensity matches 6.. run attribute @s attack_damage modifier remove apoca:medium_crowd_damage
execute unless score @s APOCZombieDensity matches 6.. run attribute @s knockback_resistance modifier remove apoca:medium_crowd_resilience
execute unless score @s APOCZombieDensity matches 9.. run attribute @s armor modifier remove apoca:large_crowd_armor
execute unless score @s APOCZombieDensity matches 9.. run attribute @s attack_damage modifier remove apoca:large_crowd_damage
execute unless score @s APOCZombieDensity matches 9.. run attribute @s attack_knockback modifier remove apoca:large_crowd_knockback
execute unless score @s APOCZombieDensity matches 9.. run attribute @s knockback_resistance modifier remove apoca:large_crowd_resilience