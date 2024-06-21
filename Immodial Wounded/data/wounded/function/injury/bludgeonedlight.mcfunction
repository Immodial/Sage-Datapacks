## >> From: wounded:injury/call
## >> At: Player with a slight bludgeoning injury
## >> As: Player with a slight bludgeoning injury
## >> Does: Reduce max health
## >> Input: None
# If newly applied, play sound
execute if score _InjuryDuration WDGlobals matches 1199.. run playsound block.sculk.break player @a ~ ~ ~ 1 1.6
# Apply max health decrease
attribute @s generic.max_health modifier add wounded:bruise -2 add_value
# Remove if expiring
execute if score _InjuryDuration WDGlobals matches ..0 run attribute @s generic.max_health modifier remove wounded:bruise