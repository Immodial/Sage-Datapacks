## >> From: retooled:init
## >> At: Entity being attacked with a sickle
## >> As: Entity being attacked with a sickle
## >> Does: Pull towards player who attacked
## >> Input: None
execute on attacker run tag @s add RTSicklePulling
execute facing entity @p[tag=RTSicklePulling] feet run tp @s ^ ^ ^1.4
execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[tag=RTSicklePulling,dx=0,dy=0,dz=0] at @p[tag=RTSicklePulling] rotated ~ 0 run tp @s ^ ^ ^1
tag @e remove RTSicklePulling