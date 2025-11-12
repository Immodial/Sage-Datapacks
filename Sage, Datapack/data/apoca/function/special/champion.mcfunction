## >> From: apoca:loop/player
## >> At: Player who died
## >> As: Mob that killed player
## >> Does: Apply champion buffs
## >> Input: None
tag @s add APOCChampion
attribute @s attack_damage modifier add apoca:champion_attack 1.2 add_multiplied_base
attribute @s armor modifier add apoca:champion_armor_mult 1.5 add_multiplied_total
attribute @s armor modifier add apoca:champion_armor 3 add_value
attribute @s armor_toughness modifier add apoca:champion_toughness 5 add_value
attribute @s fall_damage_multiplier modifier add apoca:champion_fall_protection -0.5 add_value
attribute @s oxygen_bonus modifier add apoca:champion_drown_protection -0.5 add_value
attribute @s burning_time modifier add apoca:champion_fire_protection -0.5 add_value