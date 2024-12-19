## >> From: lorem:use (advancement)
## >> At: Player using item
## >> As: Player using item
## >> Does: Allow item use to affect lore
## >> Input: None
# Increase use time
tag @s add IDLGUsing
scoreboard players add @s IDLGUseTime 1
# Light blunt
execute if items entity @s weapon.* *[custom_data~{IDLGBlunt:true}] if items entity @s weapon.* flint_and_steel run playsound item.flintandsteel.use player @a ~ ~ ~ 1 1.4
execute if items entity @s weapon.mainhand *[custom_data~{IDLGBlunt:true}] if items entity @s weapon.offhand flint_and_steel run item modify entity @s weapon.mainhand indulge:light_blunt
execute if items entity @s weapon.offhand *[custom_data~{IDLGBlunt:true}] if items entity @s weapon.mainhand flint_and_steel run item modify entity @s weapon.offhand indulge:light_blunt
# Revoke
advancement revoke @s only indulge:use