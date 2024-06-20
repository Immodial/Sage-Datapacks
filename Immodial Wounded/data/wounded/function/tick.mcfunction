## >> From: wounded:init
## >> At: None
## >> As: Server
## >> Does: Reset damage every tick
## >> Input: None
execute as @e[type=player,gamemode=!spectator] run function wounded:update with entity @s
scoreboard players reset @a WDDamage
# Give spawn protection
effect give @e[type=player,scores={WDDeath=1..}] regeneration 30 1
scoreboard players reset @e[type=player] WDDeath
# Allow player to inspect wounds
scoreboard players remove @a[scores={WDInspectTime=1..}] WDInspectTime 1
execute as @a[x_rotation=90] unless score @s WDInspectTime matches 12.. if predicate {"condition": "minecraft:entity_properties", "entity": "this", "predicate": {"flags": {"is_sneaking": true}}} run scoreboard players add @s WDInspectTime 2
execute as @a[tag=!WDInspected,scores={WDInspectTime=10..}] run function wounded:list with entity @s
tag @a[scores={WDInspectTime=..0}] remove WDInspected
# Loop
schedule function wounded:tick 1