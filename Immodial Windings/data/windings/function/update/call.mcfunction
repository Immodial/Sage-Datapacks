## >> From: windings:tick
## >> At: Spell being updated
## >> As: Spell being updated
## >> Does: Make spell progress
## >> Input: WNSpellType (mcfunc in windings:update/)
scoreboard players add @s WNSpellProgress 1
$function windings:update/$(WNSpellType)