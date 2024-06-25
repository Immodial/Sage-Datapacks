## >> From: unref:itemeffects
## >> At: Molten iron item being cooled
## >> As: Molten iron item being cooled
## >> Does: Turn into iron nuggets
## >> Input: None
playsound block.fire.extinguish block @a ~ ~ ~ 1 0.2
data modify entity @s Item set value {id:"minecraft:iron_nugget",count:5}