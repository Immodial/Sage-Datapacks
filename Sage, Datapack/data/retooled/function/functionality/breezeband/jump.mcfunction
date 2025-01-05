## >> From: retooled:jump
## >> At: Player with breeze band offhand
## >> As: Player with breeze band offhand
## >> Does: Fire Breeze Ball downwards
## >> Input: None
summon wind_charge ~ ~ ~ {Tags:["RTBreezeJump"],Motion:[0d,0d,0d],acceleration_power:0.06d}
data modify entity @n[tag=RTBreezeJump] Motion[1] set from entity @s Motion[1]
data modify entity @n[tag=RTBreezeJump] Owner set from entity @s UUID
tag @n[tag=RTBreezeJump] remove RTBreezeJump
playsound entity.breeze.jump player @a ~ ~ ~ 1 1.2
playsound entity.breeze.jump player @a ~ ~ ~ 1 1.6
particle gust
tag @s add RTDoubleJumped