## >> From: retooled:jump (advancement)
## >> At: Player who just jumped
## >> As: Player who just jumped
## >> Does: Apply possible effects
## >> Input: None
# Double jump
execute if entity @s[tag=!RTDoubleJumped,tag=!RTJumped,nbt=!{FallDistance:0f}] if items entity @s weapon.offhand *[custom_data~{RTBreezeBand:true}] run function retooled:functionality/breezeband/jump
tag @s add RTJumping
advancement revoke @s only retooled:jump