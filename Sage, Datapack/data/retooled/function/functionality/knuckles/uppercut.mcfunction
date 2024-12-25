## >> From: retooled:tick
## >> At: Player using Copper Knuckles in their offhand
## >> As: Player using Copper Knuckles in their offhand
## >> Does: Uppercut damaged enemies
## >> Input: None
execute if entity @s[tag=RTUsed] run return fail
tag @s add RTAttackMarked
execute anchored eyes positioned ^ ^ ^1.5 positioned ~-1 ~-1 ~-1 as @e[tag=!RTAttackMarked,dx=1,dy=1,dz=1,nbt=!{HurtTime:0s}] if function retooled:check/marked run tag @s add RTKnuckleHit
effect give @n[tag=RTKnuckleHit] slowness 2 0
execute at @n[tag=RTKnuckleHit] run playsound entity.player.attack.crit player @a ~ ~ ~ 1 1.5
execute if entity @n[tag=RTKnuckleHit] anchored eyes run particle small_gust ^ ^0.2 ^0.75
execute if entity @n[tag=RTKnuckleHit] anchored eyes run particle small_gust ^ ^ ^0.75
execute if entity @n[tag=RTKnuckleHit] anchored eyes run particle small_gust ^ ^-0.2 ^0.75
damage @n[tag=RTKnuckleHit] 5 retooled:uppercut by @p[tag=RTAttackMarked]
execute as @n[tag=RTKnuckleHit] at @s run tp @s ~ ~0.6 ~
tag @e remove RTKnuckleHit
tag @a remove RTKnuckleHit
tag @s remove RTAttackMarked