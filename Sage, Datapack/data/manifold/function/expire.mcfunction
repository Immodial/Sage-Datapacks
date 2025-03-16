## >> From: manifold:illager
## >> At: Illager who's goals expired
## >> As: Illager who's goals expired
## >> Does: Remove all goals
## >> Input: None
playsound entity.pillager.celebrate hostile @a ~ ~ ~ 0.5 0.2
tag @s remove MNFGoaled
tag @s remove MNFCamping
tag @s remove MNFWoodChopping
tag @s remove MNFWoodGathering
scoreboard players set @s[tag=MNFGoaled] MNFGoalProgress 0
function manifold:idled