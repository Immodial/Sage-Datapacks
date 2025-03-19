## >> From: sutils:use
## >> At: Player using recall book
## >> As: Player using recall book
## >> Does: Go to recall point
## >> Input: PosX (double), PosY (double), PosZ (double), Xp (int), Gamemode (int)
execute unless predicate sutils:crouch run function sutils:recall/store
$execute in $(Dimension) run tp $(PosX) $(PosY) $(PosZ)
$xp set @s $(Xp) levels
$scoreboard players set %Gamemode SUGlobals $(Gamemode)
execute if score %Gamemode SUGlobals matches 0 run gamemode survival
execute if score %Gamemode SUGlobals matches 1 run gamemode creative
execute if score %Gamemode SUGlobals matches 2 run gamemode adventure
execute if score %Gamemode SUGlobals matches 3 run gamemode spectator
execute at @s run function sutils:recall/extract