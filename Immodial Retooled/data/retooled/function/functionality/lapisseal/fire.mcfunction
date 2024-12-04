## >> From: retooled:use
## >> At: Player firing a bolt with a Lapis Seal
## >> As: Player firing a bolt with a Lapis Seal
## >> Does: Fire Bolt
## >> Input: None
# Cancel if already using
execute if entity @s[tag=RTUsed] run return fail
tag @s add RTAttackMarked
# Cancel if lacking levels
execute unless entity @s[level=1..] if entity @s[gamemode=!creative] run return fail
experience add @s[gamemode=!creative] -1 levels
# Summon projectile
playsound block.enchantment_table.use player @a ~ ~ ~ 1 2
playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 0.8
summon minecraft:marker ~ ~1 ~ {Tags:["RTSummonedBolt","RTProjectile"],data:{Projectile:{Type:"enchbolt"}}}
execute anchored eyes run tp @n[type=marker,tag=RTSummonedBolt] ^ ^ ^1.5 facing ^ ^ ^3
tag @n[type=marker,tag=RTSummonedBolt] remove RTSummonedBolt