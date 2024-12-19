## >> From: iguns:projectile/call
## >> At: Projectile being updated
## >> As: Projectile being updated
## >> Does: Move bullet forward and deal damage
## >> Input: None
# Move forward
tp @s ^ ^ ^0.5
# Show particles
particle gust ^ ^ ^
particle gust ^ ^ ^0.25
# Collide with blocks
execute unless block ^ ^ ^ #iguns:passable run kill @s
execute unless block ^ ^ ^0.25 #iguns:passable run kill @s
# Break blocks
execute if block ^ ^ ^ #iguns:breachable run setblock ^ ^ ^ air destroy
execute if block ^ ^ ^0.25 #iguns:breachable run setblock ^ ^ ^0.25 air destroy
# End if not far enough yet
execute unless score @s IGProjectileTime matches 4.. run return fail
# Damage mobs
execute positioned ~-0.5 ~-0.5 ~-0.5 run damage @n[type=!#iguns:ignored,dx=0,dy=0,dz=0] 6 iguns:bullet at ^ ^ ^-2
# Delete if too far
execute if score @s IGProjectileTime matches 15.. run kill @s