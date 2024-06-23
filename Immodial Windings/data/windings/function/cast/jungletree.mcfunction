## >> From: windings:cast/call
## >> At: Player casting a spell
## >> As: Player casting a spell
## >> Does: Create jungle tree
## >> Input: None
execute at @s if block ~ ~-1 ~ #minecraft:azalea_root_replaceable run place feature jungle_tree
playsound block.grass.break player @a ~ ~ ~ 1.4 0
playsound block.grass.break player @a ~ ~ ~ 1.4 0.2
playsound block.grass.break player @a ~ ~ ~ 1.4 0.4
playsound block.enchantment_table.use player @a ~ ~ ~ 1.4 0.4