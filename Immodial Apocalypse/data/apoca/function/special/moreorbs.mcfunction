## >> From: apoca:loop/xporb
## >> At: Any xp orb
## >> As: Any xp orb
## >> Does: Duplicate xp orbs
## >> Input: Value (short)
# Possibly create more orbs
$execute unless function apoca:random/8 run summon experience_orb ~ ~ ~ {Value:$(Value)}
$execute unless function apoca:random/8 run summon experience_orb ~ ~ ~ {Value:$(Value)}
execute unless data entity @s {Value:1s} unless function apoca:random/48 run function apoca:special/jackpot with entity @s
# Mark as possibly multiplied
tag @s add APOCModified