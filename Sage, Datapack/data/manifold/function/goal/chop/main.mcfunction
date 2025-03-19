## >> From: manifold:illager
## >> At: Any illager
## >> As: Vindicator tasked with cutting wood
## >> Does: Collect wood
## >> Input: None
scoreboard players set _DetectDistance MNFGlobals 6
execute anchored eyes positioned ^ ^ ^ on target facing entity @s feet if function manifold:goal/chop/detect run scoreboard players add @n[tag=MNFGoalExecuting] MNFGoalProgress 2
scoreboard players reset _DetectDistance MNFGlobals
scoreboard players set _BreakDistance MNFGlobals 6
execute if score @s MNFGoalProgress matches 10.. anchored eyes positioned ^ ^ ^ on target facing entity @s feet run function manifold:goal/chop/break
scoreboard players reset _BreakDistance MNFGlobals
execute on target if entity @s[tag=MNFTargetedWood] run return fail
tag @e[type=bat] remove MNFTargeting
scoreboard players set _FindDistance MNFGlobals 10
execute store result storage manifold ResourceFinder.Yaw int 1 run random value 0..359
execute store result storage manifold ResourceFinder.Pitch int 1 run random value -40..40
execute anchored eyes positioned ^ ^ ^ run function manifold:goal/chop/find with storage manifold ResourceFinder
scoreboard players reset _FindDistance MNFGlobals