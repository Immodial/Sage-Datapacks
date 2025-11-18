## >> From: windings:parsenext
## >> At: Any Spell
## >> As: Spell with the Amethyst-Major Lapis Pattern
## >> Does: Merge pattern into Amethyst Alternate
## >> Input: None
# Remove match
function windings:lens/decipher
function windings:lens/decipher
data modify entity @s data.Inscribed append value "amealt"
# Prevent future matches
data remove storage windings parse.match