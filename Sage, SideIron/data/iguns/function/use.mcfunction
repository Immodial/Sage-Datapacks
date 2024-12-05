## >> From: iguns:use (advancement)
## >> At: Player using item
## >> As: Player using item
## >> Does: Check effects of using gun
## >> Input: None
# Remove advancement
advancement revoke @s only iguns:use
# End if item is not a gun or if it was just used
execute unless items entity @s weapon.mainhand *[custom_data~{IGWeapon:true}] run return fail
# Mark as using item and end if it was already used
tag @s add IGUsing
execute if entity @s[tag=IGUsed] run return fail
# Increment time and mark player
scoreboard players add @s IGUseTime 1
# Load data
execute store result score @s IGLoadTime run data get entity @s SelectedItem.components.minecraft:custom_data.IGLoadTime
execute if items entity @s weapon.mainhand *[custom_data~{IGLoaded:false}] if score @s IGUseTime = @s IGLoadTime run function iguns:load with entity @s SelectedItem.components.minecraft:custom_data
# Almost full load sound
scoreboard players remove @s IGLoadTime 6
execute if items entity @s weapon.mainhand *[custom_data~{IGLoaded:false}] if score @s IGUseTime = @s IGLoadTime run playsound block.beehive.exit player @s ~ ~ ~ 0.1 0.8
# If loaded, play aim sound
execute if score @s IGUseTime matches 1 if items entity @s weapon.mainhand *[custom_data~{IGLoaded:true}] run return run playsound block.anvil.place player @s ~ ~ ~ 0.3 2
# Otherwise, play load sound
execute if score @s IGUseTime matches 1 if items entity @s weapon.mainhand *[custom_data~{IGLoaded:false}] run playsound block.copper_trapdoor.open player @a ~ ~ ~ 0.3 1.6
execute if score @s IGUseTime matches 1 if items entity @s weapon.mainhand *[custom_data~{IGLoaded:false}] run playsound entity.iron_golem.step player @a ~ ~ ~ 0.3 1.4