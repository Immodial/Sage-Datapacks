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
tellraw @s[scores={WNDGDictPage=1}] [{"text":"[     ]","font":"windings:winding"},{"text":" Glyphs Merging","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=1}] [{"text":"X","font":"windings:winding"},{"text":" Major","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=1}] [{"text":"Y","font":"windings:winding"},{"text":" Alternate","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=1}] [{"text":"Z","font":"windings:winding"},{"text":" Super","font":"minecraft:default"}]

tellraw @s[scores={WNDGDictPage=2}] [{"text":"A","font":"windings:winding"},{"text":" Emerald","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=2}] [{"text":"   Fundamental Glyph: Reshape","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=2}] [{"text":"   Must be crafted","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=2}] [{"text":"A<X","font":"windings:winding"},{"text":" Emerald Major","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=2}] [{"text":"   May thine borders be punctured","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=2}] [{"text":"   Made with ","font":"minecraft:default"},{"text":"[AC<X ]","font":"windings:winding"}]
tellraw @s[scores={WNDGDictPage=2}] [{"text":"A<Y","font":"windings:winding"},{"text":" Emerald Alt","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=2}] [{"text":"   May thine structures find support","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=2}] [{"text":"   Made with ","font":"minecraft:default"},{"text":"[AB<X ]","font":"windings:winding"}]
tellraw @s[scores={WNDGDictPage=2}] [{"text":"A<Z","font":"windings:winding"},{"text":" Emerald Super","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=2}] [{"text":"   May thine vicinity be obliterated","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=2}] [{"text":"   Made with ","font":"minecraft:default"},{"text":"[AC<Z ]","font":"windings:winding"},{"text":" or ","font":"minecraft:default"},{"text":"[A<XC<Z ]","font":"windings:winding"}]

tellraw @s[scores={WNDGDictPage=3}] [{"text":"B","font":"windings:winding"},{"text":" Lapis","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=3}] [{"text":"   Fundamental Glyph: Shift","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=3}] [{"text":"   Must be crafted","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=3}] [{"text":"B<X","font":"windings:winding"},{"text":" Lapis Major","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=3}] [{"text":"   May thine spirits be lifted","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=3}] [{"text":"   Made with ","font":"minecraft:default"},{"text":"[BB ]","font":"windings:winding"},{"text":" or ","font":"minecraft:default"},{"text":"[BBB ]","font":"windings:winding"},{"text":" or ","font":"minecraft:default"},{"text":"[BC ]","font":"windings:winding"},{"text":" or ","font":"minecraft:default"},{"text":"[BC<X ]","font":"windings:winding"}]
tellraw @s[scores={WNDGDictPage=3}] [{"text":"B<Z","font":"windings:winding"},{"text":" Lapis Super","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=3}] [{"text":"   May thine body soar","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=3}] [{"text":"   Made with ","font":"minecraft:default"},{"text":"[AC<Z ]","font":"windings:winding"},{"text":" or ","font":"minecraft:default"},{"text":"[A<XC<Z ]","font":"windings:winding"}]

tellraw @s[scores={WNDGDictPage=4}] [{"text":"C","font":"windings:winding"},{"text":" Redstone","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=4}] [{"text":"   Fundamental Glyph: Empower","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=4}] [{"text":"   Must be crafted","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=4}] [{"text":"C<X","font":"windings:winding"},{"text":" Redstone Major","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=4}] [{"text":"   May thine footfalls run urgent","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=4}] [{"text":"   Made with ","font":"minecraft:default"},{"text":"[CC ]","font":"windings:winding"},{"text":" or ","font":"minecraft:default"},{"text":"[CCC ]","font":"windings:winding"},{"text":" or ","font":"minecraft:default"},{"text":"[CC<X ]","font":"windings:winding"}]
tellraw @s[scores={WNDGDictPage=4}] [{"text":"C<Y","font":"windings:winding"},{"text":" Redstone Alt","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=4}] [{"text":"   May thine body be rewound","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=4}] [{"text":"   Made with ","font":"minecraft:default"},{"text":"[CB<X ]","font":"windings:winding"}]
tellraw @s[scores={WNDGDictPage=4}] [{"text":"C<Z","font":"windings:winding"},{"text":" Redstone Super","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=4}] [{"text":"   May thine rapidity exceed the winds","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=4}] [{"text":"   Made with ","font":"minecraft:default"},{"text":"[C<XC<X ]","font":"windings:winding"}]

tellraw @s[scores={WNDGDictPage=5}] [{"text":"D ","font":"windings:winding"},{"text":" Amethyst","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=5}] [{"text":"   Secondary Glyph: Projection - May thine spells be cast afar","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=5}] [{"text":"   Can be crafted; made with ","font":"minecraft:default"},{"text":"[B<XC<X ]","font":"windings:winding"}]
tellraw @s[scores={WNDGDictPage=5}] [{"text":"D <X","font":"windings:winding"},{"text":" Amethyst Major","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=5}] [{"text":"   May thine gaze cast such spells","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=5}] [{"text":"   Made with ","font":"minecraft:default"},{"text":"[D C<X ]","font":"windings:winding"}]
tellraw @s[scores={WNDGDictPage=5}] [{"text":"D <Y","font":"windings:winding"},{"text":" Amethyst Alt","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=5}] [{"text":"   May thine course run wild","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=5}] [{"text":"   Made with ","font":"minecraft:default"},{"text":"[D C<Y ]","font":"windings:winding"}]

tellraw @s[scores={WNDGDictPage=6}] [{"text":"E","font":"windings:winding"},{"text":" Prismarine Shard","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=6}] [{"text":"   Secondary Glyph: Teleport Players - May thine peoples be brought together","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=6}] [{"text":"   Can be crafted; made with ","font":"minecraft:default"},{"text":"[A<XB<XA ]","font":"windings:winding"}]
tellraw @s[scores={WNDGDictPage=6}] [{"text":"F","font":"windings:winding"},{"text":" Prismarine Crystal","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=6}] [{"text":"   Secondary Glyph: Pull Creatures - May thine world be bound","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=6}] [{"text":"   Can be crafted; made with ","font":"minecraft:default"},{"text":"[A<XB<XB ]","font":"windings:winding"}]

tellraw @s[scores={WNDGDictPage=7}] [{"text":"G","font":"windings:winding"},{"text":" Resin","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=7}] [{"text":"   Secondary Glyph: Pain - May thine enemies suffer","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=7}] [{"text":"   Can be crafted; made with ","font":"minecraft:default"},{"text":"[A<XC<X ]","font":"windings:winding"}]
tellraw @s[scores={WNDGDictPage=7}] [{"text":"G<X","font":"windings:winding"},{"text":" Resin Major","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=7}] [{"text":"   May thine raiders die quickly","font":"minecraft:default"}]
tellraw @s[scores={WNDGDictPage=7}] [{"text":"   Made with ","font":"minecraft:default"},{"text":"[GC<X ]","font":"windings:winding"}]
scoreboard players reset @s[scores={WNDGDictPage=7}] WNDGDictPage