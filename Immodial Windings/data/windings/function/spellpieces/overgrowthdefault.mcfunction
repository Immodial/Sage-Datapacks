## >> From: windings:define/jungle
## >> At: Player holding an undefined book
## >> As: Player holding an undefined book
## >> Does: Define default Jungle spell as Bower
## >> Input: None
execute store result score _BasePiece WNGlobals run random value 1..3
execute if score _BasePiece WNGlobals matches 1 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNDefaultSpell set value [{SpellPiece:"azaleatree"}]
execute if score _BasePiece WNGlobals matches 2 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNDefaultSpell set value [{SpellPiece:"moss"}]
execute if score _BasePiece WNGlobals matches 3 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNDefaultSpell set value [{SpellPiece:"cavevines"}]
execute store result score _SecondPiece WNGlobals run random value 1..4
execute unless score _BasePiece WNGlobals matches 1 if score _SecondPiece WNGlobals matches 1 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNDefaultSpell append value {SpellPiece:"azaleatree"}
execute unless score _BasePiece WNGlobals matches 2 if score _SecondPiece WNGlobals matches 2 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNDefaultSpell append value {SpellPiece:"moss"}
execute unless score _BasePiece WNGlobals matches 3 if score _SecondPiece WNGlobals matches 3 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNDefaultSpell append value {SpellPiece:"cavevines"}
execute unless score _BasePiece WNGlobals matches 4 if score _SecondPiece WNGlobals matches 4 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNDefaultSpell append value {SpellPiece:"resistaura"}
execute store result score _ThirdPiece WNGlobals run random value 1..4
execute unless score _BasePiece WNGlobals matches 1 unless score _SecondPiece WNGlobals matches 1 if score _ThirdPiece WNGlobals matches 1 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNDefaultSpell append value {SpellPiece:"azaleatree"}
execute unless score _BasePiece WNGlobals matches 2 unless score _SecondPiece WNGlobals matches 2 if score _ThirdPiece WNGlobals matches 2 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNDefaultSpell append value {SpellPiece:"moss"}
execute unless score _BasePiece WNGlobals matches 3 unless score _SecondPiece WNGlobals matches 3 if score _ThirdPiece WNGlobals matches 3 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNDefaultSpell append value {SpellPiece:"cavevines"}
execute unless score _BasePiece WNGlobals matches 4 unless score _SecondPiece WNGlobals matches 4 if score _ThirdPiece WNGlobals matches 4 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNDefaultSpell append value {SpellPiece:"resistaura"}
scoreboard players reset _BasePiece WNGlobals
scoreboard players reset _SecondPiece WNGlobals
scoreboard players reset _ThirdPiece WNGlobals