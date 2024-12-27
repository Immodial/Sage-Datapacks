## >> From: hellscape:player
## >> At: Any player's head, rotated facing randomly
## >> As: Any player
## >> Does: Set path to find radiation
## >> Input: Yaw (int), Pitch (int)
scoreboard players set _RadDistance HSGlobals 20
scoreboard players set _RadMax HSGlobals 1
$execute rotated $(Yaw) $(Pitch) run function hellscape:radcast
scoreboard players operation @s HSRadiation += _RadMax HSGlobals
scoreboard players reset _RadDistance
scoreboard players reset _RadMax