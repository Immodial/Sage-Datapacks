## >> From: seated:sit
## >> At: Player who is sitting down, centered to block
## >> As: Player who is sitting down
## >> Does: Align seat entity to stairs
## >> Input: None
execute if block ~ ~ ~ #minecraft:stairs[shape=straight,facing=north] run tp @n[tag=STDSeating] ~ ~ ~0.15
execute if block ~ ~ ~ #minecraft:stairs[shape=straight,facing=south] run tp @n[tag=STDSeating] ~ ~ ~-0.15
execute if block ~ ~ ~ #minecraft:stairs[shape=straight,facing=east] run tp @n[tag=STDSeating] ~-0.15 ~ ~
execute if block ~ ~ ~ #minecraft:stairs[shape=straight,facing=west] run tp @n[tag=STDSeating] ~0.15 ~ ~
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=north] run tp @n[tag=STDSeating] ~-0.2 ~ ~0.2
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=south] run tp @n[tag=STDSeating] ~0.2 ~ ~-0.2
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=east] run tp @n[tag=STDSeating] ~-0.2 ~ ~-0.2
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=west] run tp @n[tag=STDSeating] ~0.2 ~ ~0.2
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=north] run tp @n[tag=STDSeating] ~0.2 ~ ~0.2
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=south] run tp @n[tag=STDSeating] ~-0.2 ~ ~-0.2
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=east] run tp @n[tag=STDSeating] ~-0.2 ~ ~0.2
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=west] run tp @n[tag=STDSeating] ~0.2 ~ ~-0.2
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=north] run tp @n[tag=STDSeating] ~-0.1 ~ ~0.1
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=south] run tp @n[tag=STDSeating] ~0.1 ~ ~-0.1
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=east] run tp @n[tag=STDSeating] ~-0.1 ~ ~-0.1
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=west] run tp @n[tag=STDSeating] ~0.1 ~ ~0.1
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left,facing=north] run tp @n[tag=STDSeating] ~0.1 ~ ~0.1
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left,facing=south] run tp @n[tag=STDSeating] ~-0.1 ~ ~-0.1
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left,facing=east] run tp @n[tag=STDSeating] ~-0.1 ~ ~0.1
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left,facing=west] run tp @n[tag=STDSeating] ~0.1 ~ ~-0.1