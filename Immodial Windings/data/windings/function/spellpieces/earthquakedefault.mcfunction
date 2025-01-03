## >> From: windings:define/jungle
## >> At: Player holding an undefined book
## >> As: Player holding an undefined book
## >> Does: Define default Jungle spell as Bower
## >> Input: None
execute store result score _BasePiece WNGlobals run random value 1..2
execute if score _BasePiece WNGlobals matches 1 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNGroundedSpell set value [{SpellPiece:"quicksand"}]
execute if score _BasePiece WNGlobals matches 2 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNGroundedSpell set value [{SpellPiece:"perforate"}]
execute store result score _SecondPiece WNGlobals run random value 1..5
execute unless score _BasePiece WNGlobals matches 1 if score _SecondPiece WNGlobals matches 1 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNGroundedSpell append value {SpellPiece:"quicksand"}
execute unless score _BasePiece WNGlobals matches 2 if score _SecondPiece WNGlobals matches 2 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNGroundedSpell append value {SpellPiece:"perforate"}
execute unless score _BasePiece WNGlobals matches 3 if score _SecondPiece WNGlobals matches 3 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNGroundedSpell append value {SpellPiece:"degradebeam"}
execute unless score _BasePiece WNGlobals matches 4 if score _SecondPiece WNGlobals matches 4 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNGroundedSpell append value {SpellPiece:"petrify"}
execute unless score _BasePiece WNGlobals matches 5 if score _SecondPiece WNGlobals matches 5 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNGroundedSpell append value {SpellPiece:"sinkhole"}
execute store result score _ThirdPiece WNGlobals run random value 1..5
execute unless score _BasePiece WNGlobals matches 1 unless score _SecondPiece WNGlobals matches 1 if score _ThirdPiece WNGlobals matches 1 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNGroundedSpell append value {SpellPiece:"quicksand"}
execute unless score _BasePiece WNGlobals matches 2 unless score _SecondPiece WNGlobals matches 2 if score _ThirdPiece WNGlobals matches 2 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNGroundedSpell append value {SpellPiece:"perforate"}
execute unless score _BasePiece WNGlobals matches 3 unless score _SecondPiece WNGlobals matches 3 if score _ThirdPiece WNGlobals matches 3 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNGroundedSpell append value {SpellPiece:"degradebeam"}
execute unless score _BasePiece WNGlobals matches 4 unless score _SecondPiece WNGlobals matches 4 if score _ThirdPiece WNGlobals matches 4 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNGroundedSpell append value {SpellPiece:"petrify"}
execute unless score _BasePiece WNGlobals matches 5 unless score _SecondPiece WNGlobals matches 5 if score _ThirdPiece WNGlobals matches 5 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNGroundedSpell append value {SpellPiece:"sinkhole"}
execute store result score _FourthPiece WNGlobals run random value 1..5
execute unless score _BasePiece WNGlobals matches 1 unless score _SecondPiece WNGlobals matches 1 unless score _ThirdPiece WNGlobals matches 1 if score _FourthPiece WNGlobals matches 1 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNGroundedSpell append value {SpellPiece:"quicksand"}
execute unless score _BasePiece WNGlobals matches 2 unless score _SecondPiece WNGlobals matches 2 unless score _ThirdPiece WNGlobals matches 2 if score _FourthPiece WNGlobals matches 2 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNGroundedSpell append value {SpellPiece:"perforate"}
execute unless score _BasePiece WNGlobals matches 3 unless score _SecondPiece WNGlobals matches 3 unless score _ThirdPiece WNGlobals matches 3 if score _FourthPiece WNGlobals matches 3 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNGroundedSpell append value {SpellPiece:"degradebeam"}
execute unless score _BasePiece WNGlobals matches 4 unless score _SecondPiece WNGlobals matches 4 unless score _ThirdPiece WNGlobals matches 4 if score _FourthPiece WNGlobals matches 4 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNGroundedSpell append value {SpellPiece:"petrify"}
execute unless score _BasePiece WNGlobals matches 5 unless score _SecondPiece WNGlobals matches 5 unless score _ThirdPiece WNGlobals matches 5 if score _FourthPiece WNGlobals matches 5 run data modify entity @e[tag=WNDefiningBook,limit=1] Item.components.minecraft:custom_data.WNGroundedSpell append value {SpellPiece:"sinkhole"}
scoreboard players reset _BasePiece WNGlobals
scoreboard players reset _SecondPiece WNGlobals
scoreboard players reset _ThirdPiece WNGlobals
scoreboard players reset _FourthPiece WNGlobals