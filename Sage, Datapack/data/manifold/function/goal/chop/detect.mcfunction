## >> From: manifold:goal/
## >> At: Any illager
## >> As: Illager tasked with cutting wood
## >> Does: Look for wood blocks
## >> Input: None
scoreboard players remove _DetectDistance MNFGlobals 1
execute if score _DetectDistance MNFGlobals matches 1.. if block ~ ~ ~ #replaceable positioned ^ ^ ^0.5 run return run function manifold:goal/chop/detect
execute positioned ^ ^ ^0.5 if block ~ ~ ~ #manifold:wood_gathered align xyz run return 1
scoreboard players set @s MNFGoalProgress 0