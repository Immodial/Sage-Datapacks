## >> From: hellscape:radcheck
## >> At: Any player, projected in a random direction
## >> As: Any player
## >> Does: Trace path to find radiation
## >> Input: None
scoreboard players remove _RadDistance HSGlobals 1
execute if block ~ ~ ~ #hellscape:irradiated run function hellscape:radadd
execute if score _RadDistance HSGlobals matches 1.. unless block ~ ~ ~ #hellscape:radiation_blocking positioned ^ ^ ^0.5 run function hellscape:radcast