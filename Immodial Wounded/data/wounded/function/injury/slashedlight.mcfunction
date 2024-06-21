## >> From: wounded:injury/call
## >> At: Player with a slight slashing injury
## >> As: Player with a slight slashing injury
## >> Does: Limit health
## >> Input: None
# If newly applied, play sound
execute if score _InjuryDuration WDGlobals matches 2399.. run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.8
execute if score _InjuryDuration WDGlobals matches 2399.. run playsound block.sculk.break player @a ~ ~ ~ 1 1.8
# End if below 8 hearts
execute unless score @s WDHealth matches 16.. run return fail
# Cause bleed and end if on cooldown
scoreboard players add @s WDBleedTime 4
execute unless score @s WDBleedTime matches 80.. run return fail
# Reset timer and deal bleed damage
scoreboard players set @s WDBleedTime 0
damage @s 1 wither
execute anchored eyes run particle falling_dust{block_state:{Name:"minecraft:redstone_wire"}} ^ ^ ^ 0.2 0.05 0.2 0 2