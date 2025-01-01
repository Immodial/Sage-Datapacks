## >> From: windings:loop
## >> At: Any Spell
## >> As: Any Spell
## >> Does: Render spell and parse occasionally
## >> Input: None
function windings:show with entity @s data
scoreboard players add @s WNDGParseTime 1
execute if score @s WNDGParseTime matches 5.. run function windings:parse