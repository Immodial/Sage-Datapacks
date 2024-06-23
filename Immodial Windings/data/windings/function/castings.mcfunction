## >> From: windings:use
## >> At: Player casting a spell
## >> As: Player casting a spell
## >> Does: Iterate through spell entries
## >> Input: None
# Cast this spell
function windings:cast/call with storage windings currentSpell[0]
# Cast next if available
data remove storage windings currentSpell[0]
execute if data storage windings currentSpell[0] run function windings:castings