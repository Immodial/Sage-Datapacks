## >> From: wounded:update, wounded:view
## >> At: None
## >> As: Player checking their wounds
## >> Does: Show wound name
## >> Input: None
$tellraw @s {"text": " $(Name) for $(Duration) more seconds","color":"red"}
# Remove viewed list entry
data remove storage wounded:injuries viewing[0]
# Convert next entry duration from ticks to seconds
execute store result storage wounded:injuries viewing[0].Duration int 0.05 run data get storage wounded:injuries viewing[0].Duration
# Repeat with next entry
function wounded:view with storage wounded:injuries viewing[0]