## >> From: apoca:loop/pillager
## >> At: Any pillager
## >> As: Any pillager
## >> Does: Give pillager special stats
## >> Input: None
execute if data entity @s {PatrolLeader:true} run summon vindicator
execute if data entity @s {PatrolLeader:true} if predicate {"condition":"random_chance","chance":0.3} run summon vindicator
execute if data entity @s {PatrolLeader:true} if predicate {"condition":"random_chance","chance":0.3} run summon pillager
tag @s add APOCModified