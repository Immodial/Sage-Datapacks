## >> From: windings:cast/call
## >> At: Player casting a spell
## >> As: Player casting a spell
## >> Does: Create moss patch
## >> Input: None
execute at @s run place feature minecraft:patch_tall_grass
execute at @s run place feature minecraft:patch_grass_jungle
playsound block.grass.break player @a ~ ~ ~ 1.4 0.2
playsound block.grass.break player @a ~ ~ ~ 1.4 1
playsound block.grass.break player @a ~ ~ ~ 1.4 1.8
playsound block.enchantment_table.use player @a ~ ~ ~ 1.4 0.4