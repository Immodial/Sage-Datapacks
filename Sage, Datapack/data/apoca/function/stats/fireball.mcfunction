## >> From: apoca:loop/golem
## >> At: Any iron golem
## >> As: Any iron golem
## >> Does: Give iron golem special stats
## >> Input: None
# Amp up acceleration and mark velocity for charge
data modify entity @s acceleration_power set value 0.5d
execute store result score @s APOCChargeX run data get entity @s Motion[0] 10000
execute store result score @s APOCChargeY run data get entity @s Motion[1] 10000
execute store result score @s APOCChargeZ run data get entity @s Motion[2] 10000
data modify entity @s Motion set value [0d,0d,0d]
playsound block.bell.resonate hostile @a ~ ~ ~ 10 2
# Mark as given stats
tag @s add APOCModified