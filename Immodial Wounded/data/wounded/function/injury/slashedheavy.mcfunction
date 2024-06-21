## >> From: wounded:injury/call
## >> At: Player with a deep slashing injury
## >> As: Player with a deep slashing injury
## >> Does: Limit health and reduce maximum
## >> Input: None
# If newly applied, play sound
execute if score _InjuryDuration WDGlobals matches 5999.. run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.6
execute if score _InjuryDuration WDGlobals matches 5999.. run playsound block.sculk.break player @a ~ ~ ~ 1 1.2
# Apply max health decrease
attribute @s generic.max_health modifier add wounded:laceration -4 add_value
# Remove if expiring
execute if score _InjuryDuration WDGlobals matches ..0 run attribute @s generic.max_health modifier remove wounded:laceration
# End if below 5 hearts
execute unless score @s WDHealth matches 10.. run return fail
# Cause bleed and end if on cooldown
scoreboard players add @s WDBleedTime 5
execute unless score @s WDBleedTime matches 80.. run return fail
# Reset timer and deal bleed damage
scoreboard players set @s WDBleedTime 0
damage @s 1 wither
execute anchored eyes run particle falling_dust{block_state:{Name:"minecraft:redstone_wire"}} ^ ^ ^ 0.2 0.05 0.2 0 2