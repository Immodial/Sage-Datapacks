## >> From: manifold:illager
## >> At: Illager patrol leader
## >> As: Illager patrol leader
## >> Does: Create structure based on resources spent
## >> Input: None
execute unless score @s MNFResources matches 1.. run return fail
playsound block.scaffolding.place hostile @a ~ ~ ~ 0.5 0
playsound entity.warden.dig hostile @a ~ ~ ~ 0.5 2
playsound block.wood.place hostile @a ~ ~ ~ 0.5 0
playsound block.wood.place hostile @a ~ ~ ~ 0.5 0.5
playsound block.wood.place hostile @a ~ ~ ~ 0.5 0.8
execute if score @s MNFResources matches 12.. run setblock ~ ~ ~ minecraft:structure_block[mode=load]{integrity:1f,mode:"LOAD",name:"manifold:tent",posX:-2,posY:-1,posZ:-3,showboundingbox:false,sizeX:5,sizeY:7,sizeZ:6}
execute if score @s MNFResources matches 12.. align xyz run summon marker ~1.5 ~ ~0.5 {Tags:["MNFSleepingBag"]}
setblock ~ ~1 ~ redstone_block
scoreboard players set @s MNFResources 0
data modify entity @s Inventory set value []
execute run item replace entity @s weapon.offhand with air
data remove entity @s drop_chances.offhand