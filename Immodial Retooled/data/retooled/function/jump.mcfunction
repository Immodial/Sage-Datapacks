## >> From: retooled:jump (advancement)
## >> At: Player who just jumped
## >> As: Player who just jumped
## >> Does: Apply possible effects
## >> Input: None
# Double jump
execute unless entity @s[tag=RTDoubleJumped] if items entity @s weapon.offhand *[custom_data~{RTGhastBand:true}] run function retooled:functionality/ghast/jump

tag @s add RTJumping
advancement revoke @s only retooled:jump