## >> From: windings:use (advancement)
## >> At: Player using item
## >> As: Player using item
## >> Does: Cast potential spell
## >> Input: None
# Remove advancement
advancement revoke @s only windings:use
# End if item is not a spellbook
execute unless items entity @s weapon.mainhand *[custom_data~{WNSpellbook:true}] run return fail
# End if not enough ether
execute store result score %EtherNeeded WNGlobals run data get entity @s SelectedItem.components.minecraft:custom_data.WNEther
execute store result score @s WNEther if items entity @s container.* *[custom_data~{WNEther:true}]
execute if score @s WNEther < %EtherNeeded WNGlobals run return fail
# Increment time and cause chargeup
scoreboard players add @s WNManifested 2
function windings:charge/call with entity @s SelectedItem.components.minecraft:custom_data
# Unless fully charged, end
execute store result score %ManifestNeeded WNGlobals run data get entity @s SelectedItem.components.minecraft:custom_data.WNManifest
execute if score @s WNManifested < %ManifestNeeded WNGlobals run return fail
# If fully charged, check through overrides
execute run data modify storage windings currentSpell set from entity @s SelectedItem.components.minecraft:custom_data.WNDefaultSpell
execute if predicate windings:sprint if data entity @s SelectedItem.components.minecraft:custom_data.WNSprintSpell run data modify storage windings currentSpell set from entity @s SelectedItem.components.minecraft:custom_data.WNSprintSpell
execute if predicate windings:crouch if data entity @s SelectedItem.components.minecraft:custom_data.WNCrouchSpell run data modify storage windings currentSpell set from entity @s SelectedItem.components.minecraft:custom_data.WNCrouchSpell
execute if data entity @s {OnGround:1b} if data entity @s SelectedItem.components.minecraft:custom_data.WNGroundedSpell run data modify storage windings currentSpell set from entity @s SelectedItem.components.minecraft:custom_data.WNGroundedSpell
# Cast spell, take ether, clear temp spell list, and remove manifested power
execute anchored eyes positioned ^ ^ ^ run function windings:castings
execute unless entity @s[gamemode=creative] run function windings:ether with entity @s SelectedItem.components.minecraft:custom_data
scoreboard players operation @s WNManifested -= %ManifestNeeded WNGlobals
data remove storage windings currentSpell