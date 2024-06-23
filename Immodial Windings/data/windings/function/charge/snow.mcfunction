## >> From: windings:charge/call
## >> At: Player casting a spell
## >> As: Player casting a spell
## >> Does: Place and expand snow around
## >> Input: None
execute store result score _RandEffect WNGlobals run random value 1..10
execute if score _RandEffect WNGlobals matches 10 run place feature pile_snow
execute if score _RandEffect WNGlobals matches 10 run fill ~8 ~3 ~8 ~-8 ~-3 ~-8 snow[layers=5] replace snow[layers=4]
execute if score _RandEffect WNGlobals matches 10 run fill ~8 ~3 ~8 ~-8 ~-3 ~-8 snow[layers=4] replace snow[layers=3]
execute if score _RandEffect WNGlobals matches 10 run fill ~8 ~3 ~8 ~-8 ~-3 ~-8 snow[layers=3] replace snow[layers=2]
execute if score _RandEffect WNGlobals matches 10 run fill ~8 ~3 ~8 ~-8 ~-3 ~-8 snow[layers=2] replace snow[layers=1]
scoreboard players reset _RandEffect WNGlobals