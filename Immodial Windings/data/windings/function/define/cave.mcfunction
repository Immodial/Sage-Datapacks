## >> From: windings:define/call
## >> At: Player holding an undefined book
## >> As: Player holding an undefined book
## >> Does: Define as Frost
## >> Input: None
# Create item for easier item modification
summon item ~ ~ ~ {Tags:["WNDefiningBook"],Item:{id:"minecraft:stone",count:1}}
item replace entity @e[tag=WNDefiningBook] contents from entity @s weapon.mainhand
data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data set value {WNSpellbook:true,WNManifest:0b,WNEther:0b,WNDefaultSpell:[]}
# Set manifest time and ether cost
execute store result entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNManifest byte 1 run random value 50..120
execute store result entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNEther byte 1 run random value 2..5
# Randomize spells
execute store result score _DefaultSpell WNGlobals run random value 1..2
execute if score _DefaultSpell WNGlobals matches 1 run function windings:spellpieces/earthquakedefault
execute if score _DefaultSpell WNGlobals matches 2 run function windings:spellpieces/pillardefault
scoreboard players reset _DefaultSpell WNGlobals
execute store result score _GroundedSpell WNGlobals run random value -1..3
execute if score _GroundedSpell WNGlobals matches 1 run function windings:spellpieces/earthquakegrounded
execute if score _GroundedSpell WNGlobals matches 2 run function windings:spellpieces/collapsegrounded
execute if score _GroundedSpell WNGlobals matches 3 run function windings:spellpieces/crystallinegrounded
scoreboard players reset _GroundedSpell WNGlobals
execute store result score _CrouchSpell WNGlobals run random value -1..1
execute if score _CrouchSpell WNGlobals matches 1 run function windings:spellpieces/overgrowthcrouch
scoreboard players reset _CrouchSpell WNGlobals
# Set charge method
execute store result score _ChargeType WNGlobals run random value 1..2
execute if score _ChargeType WNGlobals matches 1 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNChargeEffect set value "..."
scoreboard players reset _ChargeType WNGlobals
# Give player book back and delete item form
item replace entity @s weapon.mainhand from entity @e[tag=WNDefiningBook,limit=1] contents
kill @e[tag=WNDefiningBook]