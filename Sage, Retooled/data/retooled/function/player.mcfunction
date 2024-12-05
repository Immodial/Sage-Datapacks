## >> From: retooled:tick
## >> At: Any player
## >> As: Any player
## >> Does: Cause special effects to every player
## >> Input: None
# Decrease base interaction range
attribute @s entity_interaction_range base set 2
# Update use state
tag @s remove RTUsed
tag @s[tag=RTUsing] add RTUsed
tag @s remove RTUsing
# Update jump state
tag @s remove RTJumped
tag @s[tag=RTJumping] add RTJumped
tag @s remove RTJumping
tag @s[nbt={OnGround:1b}] remove RTDoubleJumped
# Modify held items
execute if items entity @s weapon.* #retooled:modified[!custom_data] run function retooled:retool
# Disable knuckles
execute if items entity @s weapon.mainhand *[custom_data~{RTKnuckles:true},consumable] run function retooled:functionality/knuckles/deactivate