## >> From: wounded:injury/call
## >> At: Player with a decent pierce injury
## >> As: Player with a decent pierce injury
## >> Does: Apply bleeding
## >> Input: None
# If newly applied, play sound
execute if score _InjuryDuration WDGlobals matches 2399.. run playsound enchant.thorns.hit player @a ~ ~ ~ 1 1.6
# Increment and end if on cooldown
scoreboard players add @s WDBleedTime 2
execute unless score @s WDBleedTime matches 160.. run return fail
# Reset timer and cause bleed
scoreboard players set @s WDBleedTime 0
damage @s 1 wither
execute anchored eyes run particle falling_dust{block_state:{Name:"minecraft:redstone_wire"}} ^ ^ ^ 0.2 0.05 0.2 0 2