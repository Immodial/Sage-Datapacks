## >> From: Command
## >> At: Player running command
## >> As: Player running command
## >> Does: Return to death location
## >> Input: Name
data modify storage sageutils ReviveRecall.Gamemode set from entity @s playerGameType
data modify storage sageutils ReviveRecall.Xp set from entity @s XpLevel
data modify storage sageutils ReviveRecall.Dimension set from entity @s LastDeathLocation.dimension
data modify storage sageutils ReviveRecall.PosX set from entity @s LastDeathLocation.pos[0]
data modify storage sageutils ReviveRecall.PosY set from entity @s LastDeathLocation.pos[1]
data modify storage sageutils ReviveRecall.PosZ set from entity @s LastDeathLocation.pos[2]
function sutils:recall/load with storage sageutils ReviveRecall
data remove storage sageutils ReviveRecall