## >> From: apoca:loop/xporb
## >> At: Any xp orb
## >> As: Any xp orb
## >> Does: Duplicate xp orbs
## >> Input: Value (short)
# Possibly create more orbs
$execute if predicate {"condition":"random_chance","chance":0.125} run summon experience_orb ~ ~ ~ {Value:$(Value)}
$execute if predicate {"condition":"random_chance","chance":0.125} run summon experience_orb ~ ~ ~ {Value:$(Value)}
execute unless data entity @s {Value:1s} if predicate {"condition":"random_chance","chance":0.02} run function apoca:special/jackpot with entity @s
# Mark as possibly multiplied
tag @s add APOCModified