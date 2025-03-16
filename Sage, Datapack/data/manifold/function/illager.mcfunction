## >> From: manifold:loop
## >> At: Any illager
## >> As: Any illager
## >> Does: Make illagers do tasks
## >> Input: None
# Goals and progress expiration
scoreboard players remove @s[tag=MNFGoaled] MNFGoalExpiry 1
execute if score @s[tag=MNFGoaled] MNFGoalExpiry matches ..0 run function manifold:expire
scoreboard players remove @s[scores={MNFGoalProgress=1..}] MNFGoalProgress 1
execute on target if entity @s[tag=MNFTarget] run scoreboard players set @s MNFTargetIgnored 0
# Prevent idling
scoreboard players remove @s[scores={MNFIdleTime=1..}] MNFIdleTime 2
execute if data entity @s {Motion:[0d,0d,0d]} run scoreboard players add @s MNFIdleTime 3
execute if score @s MNFIdleTime matches 50.. run function manifold:idled
# Execute goals
tag @s add MNFGoalExecuting
execute if entity @s[tag=MNFWoodChopping] run function manifold:goal/chop/main
execute if entity @s[tag=MNFWoodGathering] run function manifold:goal/gather/main
execute if entity @s[tag=MNFCollector] run function manifold:goal/collect/main
execute if entity @s[tag=MNFCollectedFrom] run function manifold:goal/drop/main
tag @s remove MNFGoalExecuting
# Find goals
execute if entity @s[tag=MNFGoaled] run return fail
execute if entity @s[nbt={PatrolLeader:true}] if predicate {"condition":"random_chance","chance":0.002} run function manifold:order/camp
execute if entity @s[nbt={PatrolLeader:true}] if predicate {"condition":"random_chance","chance":0.002} run function manifold:order/assemble
execute if entity @s[type=pillager,nbt={PatrolLeader:true}] if predicate {"condition":"random_chance","chance":0.002} run function manifold:order/collect
#execute if entity @s[tag=MNFColonist] if predicate {"condition":"random_chance","chance":0.1}