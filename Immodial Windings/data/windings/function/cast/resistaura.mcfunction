## >> From: windings:cast/call
## >> At: Player casting a spell
## >> As: Player casting a spell
## >> Does: Give nearby entities poison
## >> Input: None
effect give @e[distance=..8] resistance 10 0
playsound block.tuff.break player @a ~ ~ ~ 1.4 1.2
playsound block.tuff.break player @a ~ ~ ~ 1.4 1.4
playsound block.tuff.break player @a ~ ~ ~ 1.4 1.6
playsound block.enchantment_table.use player @a ~ ~ ~ 1.4 0.4