## >> From: windings:use (advancement)
## >> At: Player looking in dictionary
## >> As: Player looking in dictionary
## >> Does: List all glyphs
## >> Input: None
# Revoke
advancement revoke @s only windings:dict
# Wait for dictionary reading to finish
tag @s add WNDGUsing
execute if entity @s[tag=WNDGDicting] run return fail
tag @s add WNDGDicting
# Play sound
playsound item.book.page_turn player @a ~ ~ ~ 0.5 0.3
playsound item.book.page_turn player @a ~ ~ ~ 0.5 0.5
# Move through pages
scoreboard players add @s WNDGDictPage 1
tellraw @s ""
tellraw @s[scores={WNDGDictPage=1}] [{"text":"A","font":"windings:winding"},{"text":" Emerald","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=1}] [{"text":"A<X","font":"windings:winding"},{"text":" Emerald Major","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=1}] [{"text":"A<Z","font":"windings:winding"},{"text":" Emerald Super","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=2}] [{"text":"B","font":"windings:winding"},{"text":" Lapis","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=2}] [{"text":"B<X","font":"windings:winding"},{"text":" Lapis Major","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=2}] [{"text":"B<Z","font":"windings:winding"},{"text":" Lapis Super","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=3}] [{"text":"C","font":"windings:winding"},{"text":" Redstone","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=3}] [{"text":"C<X","font":"windings:winding"},{"text":" Redstone Major","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=3}] [{"text":"C<Y","font":"windings:winding"},{"text":" Redstone Alt","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=3}] [{"text":"C<Z","font":"windings:winding"},{"text":" Redstone Super","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=4}] [{"text":"D","font":"windings:winding"},{"text":" Amethyst","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=4}] [{"text":"D <X","font":"windings:winding"},{"text":" Amethyst Major","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=5}] [{"text":"E","font":"windings:winding"},{"text":" Prismarine Shard","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=5}] [{"text":"F","font":"windings:winding"},{"text":" Prismarine Crystal","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=6}] [{"text":"G","font":"windings:winding"},{"text":" Resin","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=6}] [{"text":"G<X","font":"windings:winding"},{"text":" Resin Major","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=7}] [{"text":"[    ]","font":"windings:winding"},{"text":" Spells Merging","font":"minecraft:default"}]
scoreboard players reset @s[scores={WNDGDictPage=7}] WNDGDictPage