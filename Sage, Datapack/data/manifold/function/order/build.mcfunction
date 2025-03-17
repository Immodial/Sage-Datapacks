## >> From: manifold:illager
## >> At: Illager patrol leader
## >> As: Illager patrol leader
## >> Does: Create structure based on resources spent
## >> Input: None
execute store result score _TentCount MNFGlobals run execute if entity @e[tag=MNFSleepingBag,distance=..80]
execute unless score @s MNFResources matches 12.. run return fail
execute if score _TentCount MNFGlobals matches 3.. unless score @s MNFResources matches 15.. run return fail
playsound block.scaffolding.place hostile @a ~ ~ ~ 0.5 0
playsound entity.warden.dig hostile @a ~ ~ ~ 0.5 2
playsound block.wood.place hostile @a ~ ~ ~ 0.5 0
playsound block.wood.place hostile @a ~ ~ ~ 0.5 0.5
playsound block.wood.place hostile @a ~ ~ ~ 0.5 0.8
execute if score @s MNFResources matches 12.. unless entity @e[tag=MNFSleepingBag,distance=..80] run tag @s add MNFTentBuilding
execute if score @s MNFResources matches 12..14 if entity @e[tag=MNFSleepingBag,distance=..80] run tag @s add MNFTentBuilding
execute if score @s MNFResources matches 15.. if entity @e[tag=MNFSleepingBag,distance=..80] run tag @s add MNFRangeBuilding
execute if entity @s[tag=MNFTentBuilding] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{integrity:1f,mode:"LOAD",name:"manifold:tent",posX:-2,posY:-1,posZ:-3,showboundingbox:false,sizeX:5,sizeY:7,sizeZ:6}
execute if entity @s[tag=MNFTentBuilding] align xyz run summon marker ~1.5 ~ ~0.5 {Tags:["MNFSleepingBag"]}
execute if entity @s[tag=MNFRangeBuilding] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{integrity:1f,mode:"LOAD",name:"manifold:shooting_range",posX:-3,posY:-1,posZ:-4,showboundingbox:false,sizeX:6,sizeY:4,sizeZ:9}
execute if entity @s[tag=MNFRangeBuilding] align xyz run summon marker ~2.5 ~1.5 ~2.5 {Tags:["MNFRangeDummy"]}
execute if entity @s[tag=MNFRangeBuilding] align xyz run summon marker ~2.5 ~1.5 ~-1.5 {Tags:["MNFRangeDummy"]}
setblock ~ ~1 ~ redstone_block
scoreboard players set @s MNFResources 0
tag @s remove MNFTentBuilding
tag @s remove MNFRangeBuilding
data modify entity @s Inventory set value []
execute run item replace entity @s weapon.offhand with air
data remove entity @s drop_chances.offhand