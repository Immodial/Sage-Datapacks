## >> From: retooled:tick
## >> At: Player using Copper Knuckles in their offhand
## >> As: Player using Copper Knuckles in their offhand
## >> Does: Uppercut damaged enemies
## >> Input: None
execute if entity @s[tag=RTUsed] run return fail
tag @s add RTAttackMarked
execute anchored eyes positioned ^ ^ ^1.5 positioned ~-0.25 ~-0.25 ~-0.25 as @e[dx=0.5,dy=0.5,dz=0.5,nbt=!{HurtTime:0s}] if function retooled:check/marked run tag @s add RTKnuckleHit
damage @n[tag=RTKnuckleHit] 3 retooled:uppercut by @p[tag=RTAttackMarked]
effect give @n[tag=RTKnuckleHit] slowness 2 0
execute at @n[tag=RTKnuckleHit] run playsound entity.player.attack.crit player @a ~ ~ ~ 1 1.5
tag @e remove RTKnuckleHit
tag @s remove RTAttackMarked