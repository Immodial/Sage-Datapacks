## >> From: iguns:projectile/call
## >> At: Projectile being updated
## >> As: Projectile being updated
## >> Does: Move bullet forward and deal damage
## >> Input: None
# Move forward
tp @s ^ ^ ^0.6
# Show particles
particle small_gust ^ ^ ^ 0.1 0.1 0.1 0 2
particle small_gust ^ ^ ^0.3 0.1 0.1 0.1 0 2
# Collide with blocks
execute unless block ^ ^ ^ #iguns:passable run kill @s
execute unless block ^ ^ ^0.2 #iguns:passable run kill @s
execute unless block ^ ^ ^0.4 #iguns:passable run kill @s
# End if not far enough yet
execute unless score @s IGProjectileTime matches 3.. run return fail
# Damage mobs
execute positioned ~-0.5 ~-0.5 ~-0.5 if score @s IGProjectileTime matches 0..5 as @e[type=!#iguns:ignored,dx=0,dy=0,dz=0] run damage @s 12 iguns:bullet at ^ ^ ^-2
execute positioned ~-0.5 ~-0.5 ~-0.5 if score @s IGProjectileTime matches 6..10 as @e[type=!#iguns:ignored,dx=0,dy=0,dz=0] run damage @s 10 iguns:bullet at ^ ^ ^-2
execute positioned ~-0.5 ~-0.5 ~-0.5 if score @s IGProjectileTime matches 11.. as @e[type=!#iguns:ignored,dx=0,dy=0,dz=0] run damage @s 6 iguns:bullet at ^ ^ ^-2
# Delete if too far
execute if score @s IGProjectileTime matches 30.. run kill @s