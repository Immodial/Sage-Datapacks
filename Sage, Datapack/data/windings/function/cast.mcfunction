## >> From: windings:parse, windings:cast
## >> At: Spell that finished parsing
## >> As: Spell that finished parsing
## >> Does: Cast spells
## >> Input: NextCast (mcfunc in windings:activate/)
$function windings:activate/$(NextCast)
data remove entity @s data.Inscribed[0]
data modify entity @s data.NextCast set from entity @s data.Inscribed[0]
execute if data entity @s data.Inscribed[0] at @s run return run function windings:cast with entity @s data
kill @s