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
tellraw @s [{"text":"A","font":"windings:winding"},{"text":" Emerald","font":"minecraft:default"}]
tellraw @s [{"text":"A<X","font":"windings:winding"},{"text":" Emerald Major","font":"minecraft:default"}]
tellraw @s [{"text":"A<Z","font":"windings:winding"},{"text":" Emerald Super","font":"minecraft:default"}]
tellraw @s [{"text":"B","font":"windings:winding"},{"text":" Lapis","font":"minecraft:default"}]
tellraw @s [{"text":"B<X","font":"windings:winding"},{"text":" Lapis Major","font":"minecraft:default"}]
tellraw @s [{"text":"B<Z","font":"windings:winding"},{"text":" Lapis Super","font":"minecraft:default"}]
tellraw @s [{"text":"C","font":"windings:winding"},{"text":" Redstone","font":"minecraft:default"}]
tellraw @s [{"text":"C<X","font":"windings:winding"},{"text":" Redstone Major","font":"minecraft:default"}]
tellraw @s [{"text":"C<Y","font":"windings:winding"},{"text":" Redstone Alt","font":"minecraft:default"}]
tellraw @s [{"text":"C<Z","font":"windings:winding"},{"text":" Redstone Super","font":"minecraft:default"}]
tellraw @s [{"text":"D","font":"windings:winding"},{"text":" Amethyst","font":"minecraft:default"}]
tellraw @s [{"text":"D <X","font":"windings:winding"},{"text":" Amethyst Major","font":"minecraft:default"}]
tellraw @s [{"text":"E","font":"windings:winding"},{"text":" Prismarine Shard","font":"minecraft:default"}]
tellraw @s [{"text":"F","font":"windings:winding"},{"text":" Prismarine Crystal","font":"minecraft:default"}]
tellraw @s [{"text":"G","font":"windings:winding"},{"text":" Resin","font":"minecraft:default"}]
tellraw @s [{"text":"G<X","font":"windings:winding"},{"text":" Resin Major","font":"minecraft:default"}]
tellraw @s [{"text":"[    ]","font":"windings:winding"},{"text":" Spells Merging","font":"minecraft:default"}]
function windings:lens/merge with storage windings parse