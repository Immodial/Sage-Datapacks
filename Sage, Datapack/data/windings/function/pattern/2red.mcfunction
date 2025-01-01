## >> From: windings:parsenext
## >> At: Any Spell
## >> As: Spell with the Redstone-Redstone Pattern
## >> Does: Merge pattern into Redstone Major
## >> Input: None
# Remove match
data remove storage windings parse.Reading[0]
data remove storage windings parse.Reading[0]
data modify entity @s data.Inscribed append value "red"
# Prevent future matches
data remove storage windings parse.match