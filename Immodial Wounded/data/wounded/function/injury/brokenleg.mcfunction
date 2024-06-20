## >> From: wounded:injury/call
## >> At: Player with a broken leg
## >> As: Player with a broken leg
## >> Does: Apply possible pierce wounds
## >> Input: None
# If newly applied, play sound
execute if score _InjuryDuration WDGlobals matches 5999.. run playsound block.sculk_catalyst.break player @a ~ ~ ~ 1 0.6
execute if score _InjuryDuration WDGlobals matches 5999.. run playsound block.bone_block.break player @a ~ ~ ~ 1 1.4
# Apply speed and jump decrease, but crouch increase
attribute @s generic.movement_speed modifier add wounded:broken_leg -0.5 add_multiplied_base
attribute @s generic.jump_strength modifier add wounded:broken_leg -0.3 add_multiplied_base
attribute @s player.sneaking_speed modifier add wounded:broken_leg 0.8 add_multiplied_base
# Remove if expiring
execute if score _InjuryDuration WDGlobals matches ..0 run attribute @s generic.movement_speed modifier remove wounded:broken_leg
execute if score _InjuryDuration WDGlobals matches ..0 run attribute @s generic.jump_strength modifier remove wounded:broken_leg
execute if score _InjuryDuration WDGlobals matches ..0 run attribute @s player.sneaking_speed modifier remove wounded:broken_leg