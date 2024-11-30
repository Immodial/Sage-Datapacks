## >> From: retooled:tick
## >> At: Player with breeze band offhand
## >> As: Player with breeze band offhand
## >> Does: Hover 
## >> Input: None
execute unless entity @s[tag=!RTJumped,nbt=!{FallDistance:0f}] run return fail
summon wind_charge ~ ~ ~ {Tags:["RTBreezeJump"],Motion:[0d,-1d,0d]}
data modify entity @n[tag=RTBreezeJump] Owner set from entity @s UUID
tag @n[tag=RTBreezeJump] remove RTBreezeJump
playsound entity.breeze.jump player @a ~ ~ ~ 1 1.2
playsound entity.breeze.jump player @a ~ ~ ~ 1 1.6
particle gust
tag @s add RTDoubleJumped