## >> From: windings:use
## >> At: Player using fast winding
## >> As: Player using fast winding
## >> Does: Multiply to make spell faster
## >> Input: None
# Discharge to cast instantly
execute if items entity @s weapon.mainhand *[custom_data~{WNDGCharged:true}] unless score @s WNDGSpellTime matches 3.. run scoreboard players set _SpellCharge WNDGGlobals 1
execute if items entity @s weapon.mainhand *[custom_data~{WNDGCharged:true}] unless score @s WNDGSpellTime matches 3.. run return run item modify entity @s weapon.mainhand windings:heavy_discharge
# Curved as https://www.desmos.com/calculator/ua8w3ehasa
execute if score _SpellCharge WNDGGlobals matches ..3 run scoreboard players set _SpellMult WNDGGlobals 14
execute if score _SpellCharge WNDGGlobals matches 4..6 run scoreboard players set _SpellMult WNDGGlobals 11
execute if score _SpellCharge WNDGGlobals matches 4..6 run scoreboard players set _SpellAdd WNDGGlobals 9
execute if score _SpellCharge WNDGGlobals matches 7..9 run scoreboard players set _SpellMult WNDGGlobals 8
execute if score _SpellCharge WNDGGlobals matches 7..9 run scoreboard players set _SpellAdd WNDGGlobals 27
execute if score _SpellCharge WNDGGlobals matches 10..12 run scoreboard players set _SpellMult WNDGGlobals 5
execute if score _SpellCharge WNDGGlobals matches 10..12 run scoreboard players set _SpellAdd WNDGGlobals 54
execute if score _SpellCharge WNDGGlobals matches 13.. run scoreboard players set _SpellMult WNDGGlobals 2
execute if score _SpellCharge WNDGGlobals matches 13.. run scoreboard players set _SpellAdd WNDGGlobals 90
scoreboard players operation _SpellCharge WNDGGlobals *= _SpellMult WNDGGlobals
scoreboard players operation _SpellCharge WNDGGlobals += _SpellAdd WNDGGlobals
scoreboard players reset _SpellMult WNDGGlobals
scoreboard players reset _SpellAdd WNDGGlobals