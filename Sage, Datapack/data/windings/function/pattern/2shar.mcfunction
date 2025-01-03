## >> From: windings:parsenext
## >> At: Any Spell
## >> As: Spell with the Redstone-Redstone Pattern
## >> Does: Merge pattern into Redstone Major
## >> Input: None
# Remove match
function windings:lens/decipher
function windings:lens/decipher
data modify entity @s data.Inscribed append value "shar"
# Prevent future matches
data remove storage windings parse.match