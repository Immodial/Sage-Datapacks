## >> From: retooled:tick
## >> At: Player with inactive Copper Knuckles in their offhand
## >> As: Player with inactive Copper Knuckles in their offhand
## >> Does: Deal 
## >> Input: None
summon item ~ ~ ~ {Tags:["RTKnuckleUpdate"],Item:{id:"minecraft:stone",count:1}}
item replace entity @e[tag=RTKnuckleUpdate] contents from entity @s weapon.offhand
data modify entity @n[tag=RTKnuckleUpdate] Item.components.minecraft:consumable set value {consume_seconds:100000,animation:"block",has_consume_particles:false}
item replace entity @s weapon.offhand from entity @n[tag=RTKnuckleUpdate] contents
kill @e[tag=RTKnuckleUpdate]