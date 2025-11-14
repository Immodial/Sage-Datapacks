## >> From: frostbite:loop (advancement)
## >> At: Any player
## >> As: Any player
## >> Does: Apply temperature effects
## >> Input: None
# If player is dead or immortal, reset
execute if score @s FBDeath matches 1.. run return run function frostbite:reset
scoreboard players reset @s[gamemode=!survival,gamemode=!adventure] FBTemperature
# Show wetness and modify based on weather/nether
execute if predicate frostbite:raining if score @s FBWetness matches ..50 run scoreboard players set @s FBWetness 50
execute if dimension the_nether run scoreboard players set @s FBWetness 0
execute if score @s FBWetness matches 1.. anchored eyes run particle falling_water ^ ^ ^ 0.2 0.05 0.2 0 1
execute if score @s FBWetness matches 1.. run scoreboard players remove @s FBTemperature 1
# Cause breath loop
scoreboard players add @s FBBreath 1
scoreboard players set @s[scores={FBTemperature=..0,FBBreath=15..}] FBBreath 0
scoreboard players set @s[scores={FBTemperature=1..,FBBreath=5..}] FBBreath 0
execute if data entity @s active_effects[{id:"minecraft:fire_resistance"}] run scoreboard players set @s[scores={FBTemperature=1750..}] FBTemperature 1750
# Apply sweltering
attribute @s[scores={FBTemperature=1800..}] movement_speed modifier add frostbite:heat_slow_minor -0.15 add_multiplied_base
attribute @s[scores={FBTemperature=..1799}] movement_speed modifier remove frostbite:heat_slow_minor
attribute @s[scores={FBTemperature=2200..}] movement_speed modifier add frostbite:heat_slow_major -0.15 add_multiplied_base
attribute @s[scores={FBTemperature=..2199}] movement_speed modifier remove frostbite:heat_slow_major
execute if score @s FBTemperature matches 2500.. if score @s FBBreath matches 0 run damage @s 1 frostbite:hyperthermia
execute if score @s FBTemperature matches 2200..2499 if score @s FBBreath matches 0 anchored eyes run playsound entity.player.breath player @a ^ ^ ^1.2 0.2 1.1
execute if score @s FBTemperature matches 2500.. if score @s FBBreath matches 0 anchored eyes run playsound entity.player.breath player @a ^ ^ ^1.2 0.2 1.2
# Apply freezing
attribute @s[scores={FBTemperature=..-1800}] movement_speed modifier add frostbite:cold_slow_minor -0.15 add_multiplied_base
attribute @s[scores={FBTemperature=-1799..}] movement_speed modifier remove frostbite:cold_slow_minor
attribute @s[scores={FBTemperature=..-2200}] movement_speed modifier add frostbite:cold_slow_major -0.15 add_multiplied_base
attribute @s[scores={FBTemperature=-2199..}] movement_speed modifier remove frostbite:cold_slow_major
execute if score @s FBTemperature matches ..-1800 run playsound minecraft:block.powder_snow.place player @a ~ ~1 ~ 0.2 0
execute if score @s FBTemperature matches ..-2200 if score @s FBBreath matches 0 anchored eyes run particle poof ^ ^ ^1.2 0.05 0.05 0.05 0.01 2
execute if score @s FBTemperature matches -2499..-2200 if score @s FBBreath matches 0 anchored eyes run playsound entity.player.breath player @a ^ ^ ^1.2 0.2 0.9
execute if score @s FBTemperature matches ..-2500 if score @s FBBreath matches 0 anchored eyes run playsound entity.player.breath player @a ^ ^ ^1.2 0.2 0.75
execute if score @s FBTemperature matches ..-2500 if score @s FBBreath matches 0 run damage @s 1 frostbite:hypothermia