## >> From: apoca:special/moreorbs
## >> At: Rare XP orb drop
## >> As: Rare XP orb drop
## >> Does: Create massive amount of bonus orbs
## >> Input: Value (short)
playsound entity.player.levelup player @a ~ ~ ~ 1 1.2
playsound minecraft:block.amethyst_block.place player @a ~ ~ ~ 1 0.8
playsound block.note_block.bell player @a ~ ~ ~ 1 1.6
$summon experience_orb ~ ~ ~ {Value:$(Value)}
$summon experience_orb ~ ~ ~ {Value:$(Value)}
$summon experience_orb ~ ~ ~ {Value:$(Value)}
$execute unless function apoca:random/5 run summon experience_orb ~ ~ ~ {Value:$(Value)}
$execute unless function apoca:random/5 run summon experience_orb ~ ~ ~ {Value:$(Value)}
$execute unless function apoca:random/5 run summon experience_orb ~ ~ ~ {Value:$(Value)}
execute unless function apoca:random/5 run summon experience_orb ~ ~ ~ {Value:1s}
execute unless function apoca:random/5 run summon experience_orb ~ ~ ~ {Value:1s}
execute unless function apoca:random/5 run summon experience_orb ~ ~ ~ {Value:1s}
execute unless function apoca:random/5 run summon experience_orb ~ ~ ~ {Value:1s}
execute unless function apoca:random/5 run summon experience_orb ~ ~ ~ {Value:1s}
execute unless function apoca:random/5 run summon experience_orb ~ ~ ~ {Value:1s}
execute unless function apoca:random/5 run summon experience_orb ~ ~ ~ {Value:1s}
execute unless function apoca:random/5 run summon experience_orb ~ ~ ~ {Value:1s}