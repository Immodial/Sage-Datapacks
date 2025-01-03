## >> From: windings:parse
## >> At: Any Spell
## >> As: Spell finished parsing
## >> Does: Decipher glyphs out of new version
## >> Input: None
function windings:lens/decipher
execute if data storage windings parse.Reading[0] run return run function windings:lens/total
tellraw @a[tag=WNDGLensing] {"text":"  ^","font":"windings:winding"}
function windings:lens/send with storage windings parse