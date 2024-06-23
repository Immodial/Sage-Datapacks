## >> From: windings:cast/call
## >> At: Player casting a spell
## >> As: Player casting a spell
## >> Does: Create melon patch
## >> Input: None
execute at @s run place feature patch_melon
playsound block.wood.place player @a ~ ~ ~ 1.4 1.2
playsound block.wood.place player @a ~ ~ ~ 1.4 1.6
playsound block.wood.place player @a ~ ~ ~ 1.4 2
playsound block.enchantment_table.use player @a ~ ~ ~ 1.4 0.4