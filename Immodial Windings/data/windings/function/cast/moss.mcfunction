## >> From: windings:cast/call
## >> At: Player casting a spell
## >> As: Player casting a spell
## >> Does: Create moss patch
## >> Input: None
execute at @s run place feature minecraft:moss_patch_bonemeal
playsound block.moss.break player @a ~ ~ ~ 1.4 1.4
playsound block.moss.break player @a ~ ~ ~ 1.4 1.6
playsound block.moss.break player @a ~ ~ ~ 1.4 1.8
playsound block.enchantment_table.use player @a ~ ~ ~ 1.4 0.4