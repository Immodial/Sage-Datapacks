## >> From: retooled:block (advancement)
## >> At: Player who just blocked an attack
## >> As: Player who just blocked an attack
## >> Does: Apply possible effects
## >> Input: None
execute if items entity @s weapon.* *[custom_data~{RTGauntlet:true}] on attacker run tag @s add RTParried
damage @n[tag=RTParried,distance=..4] 3 retooled:uppercut by @s
damage @n[tag=RTParried,distance=..4] 0 retooled:uppercut by @s
execute if entity @n[tag=RTParried,distance=..2] run scoreboard players remove @s RTGauntletTime 10
tag @e remove RTParried
# Revoke
advancement revoke @s only retooled:block