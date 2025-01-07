## >> From: windings:use
## >> At: Player using fast winding
## >> As: Player using fast winding
## >> Does: Multiply to make spell faster
## >> Input: None
execute if score _SpellCharge WNDGGlobals matches ..3 run scoreboard players set _SpellMult WNDGGlobals 13
execute if score _SpellCharge WNDGGlobals matches 4..6 run scoreboard players set _SpellMult WNDGGlobals 9
execute if score _SpellCharge WNDGGlobals matches 4..6 run scoreboard players set _SpellAdd WNDGGlobals 12
execute if score _SpellCharge WNDGGlobals matches 7..10 run scoreboard players set _SpellMult WNDGGlobals 6
execute if score _SpellCharge WNDGGlobals matches 7..10 run scoreboard players set _SpellAdd WNDGGlobals 30
execute if score _SpellCharge WNDGGlobals matches 11..15 run scoreboard players set _SpellMult WNDGGlobals 4
execute if score _SpellCharge WNDGGlobals matches 11..15 run scoreboard players set _SpellAdd WNDGGlobals 50
execute if score _SpellCharge WNDGGlobals matches 15.. run scoreboard players set _SpellMult WNDGGlobals 3
execute if score _SpellCharge WNDGGlobals matches 15.. run scoreboard players set _SpellAdd WNDGGlobals 65
scoreboard players operation _SpellCharge WNDGGlobals *= _SpellMult WNDGGlobals
scoreboard players operation _SpellCharge WNDGGlobals += _SpellAdd WNDGGlobals
scoreboard players reset _SpellMult WNDGGlobals
scoreboard players reset _SpellAdd WNDGGlobals