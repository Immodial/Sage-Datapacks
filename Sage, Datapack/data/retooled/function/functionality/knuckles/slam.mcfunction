## >> From: retooled:tick
## >> At: Player using Obsidian Knuckles in their offhand
## >> As: Player using Obsidian Knuckles in their offhand
## >> Does: Slam damaged enemies
## >> Input: None
execute if entity @s[tag=RTUsed] run return fail
tag @s add RTAttackMarked
execute anchored eyes positioned ^ ^ ^2 positioned ~-1 ~-1 ~-1 as @n[tag=!RTAttackMarked,dx=1,dy=1,dz=1,nbt=!{HurtTime:0s}] if function retooled:check/marked run tag @s add RTKnuckleHit
effect give @n[tag=RTKnuckleHit] slowness 2 1
execute if entity @n[tag=RTKnuckleHit] run item modify entity @s weapon.offhand {function:"set_damage",damage:-0.00064061499,add:true}
execute at @n[tag=RTKnuckleHit] run playsound entity.player.attack.crit player @a ~ ~ ~ 1 1.5
execute at @n[tag=RTKnuckleHit] run playsound entity.player.attack.knockback player @a ~ ~ ~ 1 1.5
execute if entity @n[tag=RTKnuckleHit] anchored eyes run particle gust ^ ^ ^1
damage @n[tag=RTKnuckleHit] 1 retooled:uppercut by @p[tag=RTAttackMarked]
damage @n[tag=RTKnuckleHit] 1 retooled:uppercut by @p[tag=RTAttackMarked]
damage @n[tag=RTKnuckleHit] 1 retooled:uppercut by @p[tag=RTAttackMarked]
damage @n[tag=RTKnuckleHit] 4 retooled:uppercut by @p[tag=RTAttackMarked]
tag @e remove RTKnuckleHit
tag @a remove RTKnuckleHit
tag @a remove RTAttackMarked