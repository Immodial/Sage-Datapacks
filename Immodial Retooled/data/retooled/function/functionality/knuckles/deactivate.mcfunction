## >> From: retooled:tick
## >> At: Player with active Copper Knuckles in their mainhand
## >> As: Player with active Copper Knuckles in their mainhand
## >> Does: Deal 
## >> Input: None
summon item ~ ~ ~ {Tags:["RTKnuckleUpdate"],Item:{id:"minecraft:stone",count:1}}
item replace entity @e[tag=RTKnuckleUpdate] contents from entity @s weapon.mainhand
data remove entity @n[tag=RTKnuckleUpdate] Item.components.minecraft:consumable
item replace entity @s weapon.mainhand from entity @n[tag=RTKnuckleUpdate] contents
kill @e[tag=RTKnuckleUpdate]