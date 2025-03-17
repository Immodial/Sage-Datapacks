## >> From: manifold:loop
## >> At: Any illager's goal target
## >> As: Any illager's goal target
## >> Does: Delete under certain circumstances
## >> Input: None
execute if entity @a[gamemode=!spectator,distance=..20] run tp @s ~ -1000 ~
execute unless entity @e[type=#illager,distance=..20] run tp @s ~ -1000 ~
execute if block ~ ~ ~ #replaceable run tp @s ~ -1000 ~
scoreboard players add @s MNFTargetExpiry 1
scoreboard players add @s MNFTargetIgnored 1
execute if score @s MNFTargetExpiry matches 200.. at @s run tp @s ~ -1000 ~
execute if score @s MNFTargetIgnored matches 20.. at @s run tp @s ~ -1000 ~
execute positioned ~ -1001 ~ if entity @s[dy=1] run kill @s