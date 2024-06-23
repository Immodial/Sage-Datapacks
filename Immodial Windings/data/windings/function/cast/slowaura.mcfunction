## >> From: windings:cast/call
## >> At: Player casting a spell
## >> As: Player casting a spell
## >> Does: Give nearby entities slowness
## >> Input: None
effect give @e[distance=..8] slowness 30 1
effect clear @s slowness
playsound block.vine.break player @a ~ ~ ~ 1.4 0.2
playsound block.vine.break player @a ~ ~ ~ 1.4 0.4
playsound block.vine.break player @a ~ ~ ~ 1.4 0.6
playsound block.enchantment_table.use player @a ~ ~ ~ 1.4 0.4