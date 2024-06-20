## >> From: wounded:injury/call
## >> At: Player with a broken arm
## >> As: Player with a broken arm
## >> Does: Apply broken leg
## >> Input: None
# If newly applied, play sound
execute if score _InjuryDuration WDGlobals matches 5999.. run playsound block.sculk_catalyst.break player @a ~ ~ ~ 1 0.8
execute if score _InjuryDuration WDGlobals matches 5999.. run playsound block.bone_block.break player @a ~ ~ ~ 1 1.2
# Apply mining and attack decrease
attribute @s generic.attack_damage modifier add wounded:broken_arm -0.6 add_multiplied_total
attribute @s generic.attack_speed modifier add wounded:broken_arm -0.8 add_multiplied_total
attribute @s player.mining_efficiency modifier add wounded:broken_arm -0.4 add_multiplied_base
# Remove if expiring
execute if score _InjuryDuration WDGlobals matches ..0 run attribute @s generic.attack_damage modifier remove wounded:broken_arm
execute if score _InjuryDuration WDGlobals matches ..0 run attribute @s generic.attack_speed modifier remove wounded:broken_arm
execute if score _InjuryDuration WDGlobals matches ..0 run attribute @s player.mining_efficiency modifier remove wounded:broken_arm