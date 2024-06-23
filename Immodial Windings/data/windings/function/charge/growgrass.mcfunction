## >> From: windings:charge/call
## >> At: Player casting a spell
## >> As: Player casting a spell
## >> Does: Grow grass
## >> Input: None
execute store result score _RandEffect WNGlobals run random value 1..20
execute if score _RandEffect WNGlobals matches 20 run playsound item.bone_meal.use player @a ~ ~ ~ 0.8 0.6
execute if score _RandEffect WNGlobals matches 20 run place feature patch_grass
scoreboard players reset _RandEffect WNGlobals