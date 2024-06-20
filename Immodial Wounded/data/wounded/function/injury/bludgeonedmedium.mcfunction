## >> From: wounded:injury/call
## >> At: Player with a decent bludgeoning injury
## >> As: Player with a decent bludgeoning injury
## >> Does: Reduce max health
## >> Input: None
# If newly applied, play sound
execute if score _InjuryDuration WDGlobals matches 3599.. run playsound block.sculk.break player @a ~ ~ ~ 1 1.3
# Apply speed and jump decrease, but crouch increase
attribute @s generic.max_health modifier add wounded:contusion -4 add_value
# Remove if expiring
execute if score _InjuryDuration WDGlobals matches ..0 run attribute @s generic.max_health modifier remove wounded:contusion