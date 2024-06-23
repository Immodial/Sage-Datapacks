## >> From: windings:init, windings:tick
## >> At: None
## >> As: Server
## >> Does: Run magic loop
## >> Input: None
# Make sure advancement is removed
advancement revoke @a only windings:use
# Lower all players' manifested energy
scoreboard players remove @a[scores={WNManifested=1..}] WNManifested 1
# Update spells
execute as @e[tag=WNSpell] at @s run function windings:update/call with entity @s data
# Give players' books their data
execute as @a if items entity @s weapon.mainhand *[custom_data~{WNUndefined:true}] at @s run function windings:define/call with entity @s SelectedItem.components.minecraft:custom_data
# Loop
schedule function windings:tick 1