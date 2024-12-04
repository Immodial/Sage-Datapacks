## >> From: retooled:init
## >> At: Entity being attacked with a sickle
## >> As: Entity being attacked with a sickle
## >> Does: Pull towards player who attacked
## >> Input: None
execute on attacker run tag @s add RTSicklePulling
execute facing entity @a[tag=RTSicklePulling] feet run tp @s ^ ^ ^1.4
tag @e remove RTSicklePulling