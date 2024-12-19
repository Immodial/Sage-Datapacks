## >> From: Command
## >> At: Player running command
## >> As: Player running command
## >> Does: Set new home
## >> Input: Name
execute unless data entity @s SelectedItem.components.minecraft:custom_name run return run tellraw @s {"text":"Name the Item to set a Recall!"}
data modify storage sageutils CreatingRecall.Name set from entity @s SelectedItem.components.minecraft:custom_name
data modify storage sageutils CreatingRecall.Gamemode set from entity @s playerGameType
data modify storage sageutils CreatingRecall.Xp set from entity @s XpLevel
data modify storage sageutils CreatingRecall.PosX set from entity @s Pos[0]
data modify storage sageutils CreatingRecall.PosY set from entity @s Pos[1]
data modify storage sageutils CreatingRecall.PosZ set from entity @s Pos[2]
function sutils:recall/save with storage sageutils CreatingRecall
data remove storage sageutils CreatingRecall