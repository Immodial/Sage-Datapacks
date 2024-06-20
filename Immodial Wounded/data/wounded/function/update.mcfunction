## >> From: wounded:tick
## >> At: None
## >> As: Any player not in spectator
## >> Does: Update wounds
## >> Input: UUID (UUID)
# Store player data into temporary storage
$data modify storage wounded:injuries updating set from storage wounded:injuries Players[{UUID:$(UUID)}].Injuries
scoreboard players set _ProcessIndex WDGlobals 0
execute store result storage wounded:injuries Processing int 1 run scoreboard players get _ProcessIndex WDGlobals
function wounded:process with storage wounded:injuries
scoreboard players reset _ProcessIndex WDGlobals
# Put updated version into player and clear temp storage
$data modify storage wounded:injuries Players[{UUID:$(UUID)}].Injuries set from storage wounded:injuries updating
data remove storage wounded:injuries updating