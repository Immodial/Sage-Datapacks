## >> From: hellscape:loop
## >> At: Portal position projected towards player
## >> As: Player being pulled in
## >> Does: Pull player towards portal
## >> Input: None
# Recall until player is hit
execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 if entity @s[distance=..12] unless block ^ ^ ^ bone_block unless block ^ ^ ^0.5 bone_block positioned ^ ^ ^1 run return run function hellscape:pull
execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0,dy=0,dz=0] run return fail
# If touching self, end with sound, attributes, and pull
playsound particle.soul_escape ambient @s ^ ^ ^-1 0.4 2
tag @s add HSPulled
tag @s add HSPulling
attribute @s generic.gravity modifier add hellscape:portal_gravity -0.95 add_multiplied_base
attribute @s generic.fall_damage_multiplier modifier add hellscape:portal_gravity -0.95 add_multiplied_base
attribute @s generic.safe_fall_distance modifier add hellscape:portal_gravity 20 add_multiplied_base
attribute @s generic.jump_strength modifier add hellscape:portal_gravity -0.75 add_multiplied_base
execute positioned as @s facing entity @n[tag=HSPortal,distance=..12] feet run tp @s ^ ^ ^0.24