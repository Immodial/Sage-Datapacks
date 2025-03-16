## >> From: manifold:illager
## >> At: Illager who's goals expired
## >> As: Illager who's goals expired
## >> Does: Remove all goals
## >> Input: None
playsound entity.pillager.death hostile @a ~ ~ ~ 0.5 1.6
tag @s remove MNFGoaled
tag @s remove MNFCamping
tag @s remove MNFWoodChopping
tag @s remove MNFWoodGathering
tag @s remove MNFCollectedFrom
tag @s remove MNFCollector
scoreboard players set @s[tag=MNFGoaled] MNFGoalProgress 0
function manifold:idled