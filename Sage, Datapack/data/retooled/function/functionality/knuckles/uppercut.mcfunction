## >> From: retooled:tick
## >> At: Player using Copper Knuckles in their offhand
## >> As: Player using Copper Knuckles in their offhand
## >> Does: Uppercut damaged enemies
## >> Input: None
execute if entity @s[tag=RTUsed] run return fail
tag @s add RTAttackMarked
execute anchored eyes positioned ^ ^ ^1.5 positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,nbt=!{HurtTime:0s}] if function retooled:check/marked run tag @s add RTKnuckleHit
effect give @n[tag=RTKnuckleHit] slowness 2 0
execute at @n[tag=RTKnuckleHit] run playsound entity.player.attack.crit player @a ~ ~ ~ 1 1.5
damage @n[tag=RTKnuckleHit] 5 retooled:uppercut by @p[tag=RTAttackMarked]
tag @e remove RTKnuckleHit
tag @a remove RTKnuckleHit
tag @s remove RTAttackMarked