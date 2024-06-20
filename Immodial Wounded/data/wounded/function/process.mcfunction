## >> From: wounded:update, wounded:process
## >> At: None
## >> As: Any player not in spectator
## >> Does: Update wound
## >> Input: Processing (int)
# End if processed injury doesn't exist
$execute unless data storage wounded:injuries updating[$(Processing)] run return fail
# Store duration
$execute store result score _InjuryDuration WDGlobals run data get storage wounded:injuries updating[$(Processing)].Duration
# Reduce by various effects
scoreboard players remove _InjuryDuration WDGlobals 1
execute if data entity @s SleepingX run scoreboard players remove _InjuryDuration WDGlobals 2
execute if data entity @s active_effects[{id:"minecraft:regeneration"}] run scoreboard players remove _InjuryDuration WDGlobals 9
execute if entity @s[gamemode=creative] run scoreboard players remove _InjuryDuration WDGlobals 9
execute if data entity @s active_effects[{id:"minecraft:instant_health"}] run scoreboard players remove _InjuryDuration WDGlobals 1200
# Apply injury effects and remove if duration is 0
$function wounded:injury/call with storage wounded:injuries updating[$(Processing)]
$execute store result storage wounded:injuries updating[$(Processing)].Duration int 1 run scoreboard players get _InjuryDuration WDGlobals
$execute if score _InjuryDuration WDGlobals matches ..0 run data remove storage wounded:injuries updating[$(Processing)]
execute if score _InjuryDuration WDGlobals matches ..0 run scoreboard players remove _ProcessIndex WDGlobals 1
scoreboard players reset _InjuryDuration WDGlobals
# Update processing index and loop
scoreboard players add _ProcessIndex WDGlobals 1
execute store result storage wounded:injuries Processing int 1 run scoreboard players get _ProcessIndex WDGlobals
function wounded:process with storage wounded:injuries