## >> From: hellscape:radcheck
## >> At: Any player, projected in a random direction
## >> As: Any player
## >> Does: Trace path to find radiation
## >> Input: None
scoreboard players remove _RadDistance HSGlobals 1
execute if block ~ ~ ~ #hellscape:netherite run return run execute unless score _RadMax HSGlobals matches 2.. run scoreboard players set _RadMax HSGlobals -4
execute if block ~ ~ ~ #hellscape:radiation_blocking run return run execute unless score _RadMax HSGlobals matches 1.. run scoreboard players set _RadMax HSGlobals -2
execute if block ~ ~ ~ #hellscape:irradiated run function hellscape:radadd
execute if score _RadDistance HSGlobals matches 1.. positioned ^ ^ ^0.5 run function hellscape:radcast
execute if score _RadMax HSGlobals matches 1.. if score _RadMax HSGlobals > _RadDefense HSGlobals run function hellscape:radparticles