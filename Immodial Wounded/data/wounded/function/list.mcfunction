## >> From: wounded:tick
## >> At: None
## >> As: Player checking their wounds
## >> Does: Show wound names
## >> Input: UUID (UUID)
# Add tag for having already inspeced self
tag @s add WDInspected
# Play inspect sound
execute at @s run playsound entity.villager.trade player @s ~ ~ ~ 1 1.2
# Send default lines
tellraw @s {"text":"You have:","bold":true}
$execute unless data storage wounded:injuries Players[{UUID:$(UUID)}].Injuries[0] run return run tellraw @s {"text":" No Injuries","color":"green"}
# Store temporary list of all injuries
$data modify storage wounded:injuries viewing set from storage wounded:injuries Players[{UUID:$(UUID)}].Injuries
# Convert first entry duration from ticks to seconds 
execute store result storage wounded:injuries viewing[0].Duration int 0.05 run data get storage wounded:injuries viewing[0].Duration
# Run with temp list, then delete
function wounded:view with storage wounded:injuries viewing[0]
data remove storage wounded:injuries viewing