## >> From: wounded:injury/call
## >> At: Player with a slight pierce injury
## >> As: Player with a slight pierce injury
## >> Does: Apply bleeding
## >> Input: None
# If newly applied, play sound
execute if score _InjuryDuration WDGlobals matches 1199.. run playsound enchant.thorns.hit player @a ~ ~ ~ 1 1.8
# Increment and end if on cooldown
scoreboard players add @s WDBleedTime 1
execute unless score @s WDBleedTime matches 160.. run return fail
# Reset timer and cause bleed
scoreboard players set @s WDBleedTime 0
damage @s 1 wither
execute anchored eyes run particle falling_dust{block_state:{Name:"minecraft:redstone_wire"}} ^ ^ ^ 0.2 0.05 0.2 0 2