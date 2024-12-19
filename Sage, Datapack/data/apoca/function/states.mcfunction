## >> From: apoca:init, apoca:states
## >> At: None
## >> As: Server
## >> Does: Run global loops
## >> Input: None
# Check for full moon
execute store result score %MoonPhase APOCGlobals run time query day
scoreboard players set %MoonCycle APOCGlobals 8
scoreboard players operation %MoonPhase APOCGlobals %= %MoonCycle APOCGlobals
# Find horde density
scoreboard players reset * APOCZombieDensity
execute as @e[type=#apoca:zombie] at @s run scoreboard players add @e[type=#apoca:zombie,distance=..6] APOCZombieDensity 1
# Find cramming limit
scoreboard players reset * APOCCramming
execute store result score %Cramming APOCGlobals run gamerule maxEntityCramming
# Find cramming limit
execute as @e[type=!#apoca:noncramming] at @s run scoreboard players add @e[type=!#apoca:noncramming,distance=..2] APOCCramming 1
execute as @e[type=!#apoca:noncramming] if score @s APOCCramming >= %Cramming APOCGlobals unless score %Cramming APOCGlobals matches ..1 at @s unless function apoca:random/16 run summon creeper ~ ~ ~ {CustomName:"'Cramming Explosion'",ExplosionRadius:2b,Fuse:0s,ignited:true}
scoreboard players remove %Cramming APOCGlobals 6
execute as @e[type=!#apoca:noncramming] if score @s APOCCramming >= %Cramming APOCGlobals unless score %Cramming APOCGlobals matches ..1 at @s unless function apoca:random/48 run playsound entity.cat.hiss neutral @a ~ ~ ~ 4 0.4
# Loop
schedule function apoca:states 20