## >> From: windings:charge/call
## >> At: Player casting a spell
## >> As: Player casting a spell
## >> Does: Slow with roots
## >> Input: None
execute if block ~ ~-1 ~ #azalea_root_replaceable run effect give @s slowness 2 0
execute if block ~ ~-1 ~ #azalea_root_replaceable run setblock ~ ~-1 ~ rooted_dirt