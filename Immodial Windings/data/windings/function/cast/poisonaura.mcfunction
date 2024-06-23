## >> From: windings:cast/call
## >> At: Player casting a spell
## >> As: Player casting a spell
## >> Does: Give nearby entities poison
## >> Input: None
effect give @e[distance=..8] poison 20 0
effect clear @s poison
playsound block.cave_vines.break player @a ~ ~ ~ 1.4 0.2
playsound block.cave_vines.break player @a ~ ~ ~ 1.4 0.4
playsound block.cave_vines.break player @a ~ ~ ~ 1.4 0.6
playsound block.enchantment_table.use player @a ~ ~ ~ 1.4 0.4