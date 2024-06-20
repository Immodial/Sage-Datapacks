## >> From: retooled:init
## >> At: Entity being attacked with a sickle
## >> As: Entity being attacked with a sickle
## >> Does: Detect whether the entity was hit by a sickle
## >> Input: None
execute on attacker run tag @s add RTSicklePulling
execute facing entity @a[tag=RTSicklePulling] feet run tp @s ^ ^ ^1.4
tag @e remove RTSicklePulling