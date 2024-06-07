## >> From: iguns:projectile/call
## >> At: Projectile being updated
## >> As: Projectile being updated
## >> Does: Move bullet forward and deal damage
## >> Input: None
# Move forward
tp @s ^ ^ ^1.6
# Show particles
particle small_gust ^ ^-0.1 ^
particle small_gust ^0.1 ^ ^0.2
particle small_gust ^ ^0.1 ^0.4
particle small_gust ^-0.1 ^ ^0.6
particle small_gust ^ ^-0.1 ^0.8
particle small_gust ^0.1 ^ ^1
particle small_gust ^ ^0.1 ^1.2
particle small_gust ^-0.1 ^ ^1.4
# Collide with blocks
execute unless block ^ ^ ^ #iguns:passable run kill @s
execute unless block ^ ^ ^0.2 #iguns:passable run kill @s
execute unless block ^ ^ ^0.4 #iguns:passable run kill @s
execute unless block ^ ^ ^0.6 #iguns:passable run kill @s
execute unless block ^ ^ ^0.8 #iguns:passable run kill @s
execute unless block ^ ^ ^1 #iguns:passable run kill @s
# End if not far enough yet
execute unless score @s IGProjectileTime matches 2.. run return fail
# Damage mobs
execute positioned ~-0.5 ~-0.5 ~-0.5 if score @s IGProjectileTime matches 0..3 run damage @n[type=!#iguns:ignored,dx=0,dy=0,dz=0] 15 iguns:bullet at ^ ^ ^-2
execute positioned ~-0.5 ~-0.5 ~-0.5 if score @s IGProjectileTime matches 4..8 run damage @n[type=!#iguns:ignored,dx=0,dy=0,dz=0] 11 iguns:bullet at ^ ^ ^-2
execute positioned ~-0.5 ~-0.5 ~-0.5 if score @s IGProjectileTime matches 9..12 run damage @n[type=!#iguns:ignored,dx=0,dy=0,dz=0] 7 iguns:bullet at ^ ^ ^-2
execute positioned ~-0.5 ~-0.5 ~-0.5 if score @s IGProjectileTime matches 13.. run damage @n[type=!#iguns:ignored,dx=0,dy=0,dz=0] 5 iguns:bullet at ^ ^ ^-2
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!#iguns:ignored,type=!enderman,dx=0,dy=0,dz=0] run kill @s
# Play whoosh pass by sound
execute positioned ~-2 ~-2 ~-2 run playsound entity.breeze.inhale player @a[dx=3,dy=3,dz=3] ~2 ~2 ~2 1 2
# Delete if too far
execute if score @s IGProjectileTime matches 20.. run kill @s