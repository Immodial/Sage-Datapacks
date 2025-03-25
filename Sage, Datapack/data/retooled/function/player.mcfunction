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
# Fix Pearlescent Alloy
execute if items entity @s container.* netherite_upgrade_smithing_template[!custom_data] run give @s netherite_upgrade_smithing_template[item_name=[{"translate":"item.hellscape.pearlescent_ingot"}],custom_data={RTModified:true}]
execute if items entity @s container.* netherite_upgrade_smithing_template[!custom_data] run clear @s netherite_upgrade_smithing_template[!custom_data] 1
# Disable knuckles and gliders
execute if items entity @s weapon.mainhand *[custom_data~{RTKnuckles:true},consumable] run function retooled:functionality/knuckles/deactivate
execute unless entity @s[tag=RTUsed] if items entity @s weapon.mainhand *[custom_data~{RTGlider:true},glider] run item modify entity @s weapon.mainhand retooled:functionality/glider_disable
execute unless entity @s[tag=RTUsed] if items entity @s weapon.offhand *[custom_data~{RTGlider:true},glider] run item modify entity @s weapon.offhand retooled:functionality/glider_disable
# Reenable gauntlets
execute if score @s RTGauntletTime matches ..29 if items entity @s weapon.mainhand *[custom_data~{RTGauntlet:true},!blocks_attacks] run item modify entity @s weapon.mainhand retooled:functionality/gauntlet_enable
execute if score @s RTGauntletTime matches ..29 if items entity @s weapon.offhand *[custom_data~{RTGauntlet:true},!blocks_attacks] run item modify entity @s weapon.offhand retooled:functionality/gauntlet_enable
# Remove poison if wearing ring
execute if items entity @s weapon.offhand *[custom_data~{RTVenomRing:true}] run effect clear @s poison
# Reduce Gauntlet usage
scoreboard players remove @s[scores={RTGauntletTime=1..}] RTGauntletTime 1