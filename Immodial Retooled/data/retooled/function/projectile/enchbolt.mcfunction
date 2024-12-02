## >> From: retooled:projectile
## >> At: Enchantment Bolt being fired
## >> As: Enchantment Bolt being fired
## >> Does: Break blocks and damage mobs
## >> Input: None
tp @s ^ ^ ^0.3
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!item,dx=0,dy=0,dz=0] run damage @s 1 retooled:magic_bolt at ^ ^ ^-5
execute if block ^ ^ ^0.3 #retooled:mineable/hammer run setblock ^ ^ ^0.3 air destroy
execute if block ^0.3 ^0.3 ^ #retooled:mineable/hammer run setblock ^0.3 ^0.3 ^ air destroy
execute if block ^-0.3 ^0.3 ^ #retooled:mineable/hammer run setblock ^-0.3 ^0.3 ^ air destroy
execute if block ^0.3 ^-0.3 ^ #retooled:mineable/hammer run setblock ^0.3 ^-0.3 ^ air destroy
execute if block ^-0.3 ^-0.3 ^ #retooled:mineable/hammer run setblock ^-0.3 ^-0.3 ^ air destroy
particle enchanted_hit ^ ^ ^0.3 0.1 0.1 0.1 0 2
particle enchanted_hit ^0.2 ^0.2 ^0.1 0.1 0.1 0.1 0 2
particle enchanted_hit ^0.3 ^0.3 ^-0.1 0.1 0.1 0.1 0 2
particle enchanted_hit ^0.4 ^0.4 ^-0.4 0.1 0.1 0.1 0 2
particle enchanted_hit ^-0.2 ^0.2 ^0.1 0.1 0.1 0.1 0 2
particle enchanted_hit ^-0.3 ^0.3 ^-0.1 0.1 0.1 0.1 0 2
particle enchanted_hit ^-0.4 ^0.4 ^-0.4 0.1 0.1 0.1 0 2
particle enchanted_hit ^0.2 ^-0.2 ^0.1 0.1 0.1 0.1 0 2
particle enchanted_hit ^0.3 ^-0.3 ^-0.1 0.1 0.1 0.1 0 2
particle enchanted_hit ^0.4 ^-0.4 ^-0.4 0.1 0.1 0.1 0 2
particle enchanted_hit ^-0.2 ^-0.2 ^0.1 0.1 0.1 0.1 0 2
particle enchanted_hit ^-0.3 ^-0.3 ^-0.1 0.1 0.1 0.1 0 2
particle enchanted_hit ^-0.4 ^-0.4 ^-0.4 0.1 0.1 0.1 0 2
execute if score @s RTProjectileTime matches 50.. run kill @s