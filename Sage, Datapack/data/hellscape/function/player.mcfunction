## >> From: hellscape:loop
## >> At: Any player
## >> As: Any player
## >> Does: Apply nether effects
## >> Input: None
# Reset radiation if dead
execute if entity @s[nbt=!{DeathTime:0s}] run return run scoreboard players reset @s HSRadiation
# Remove radiation
scoreboard players remove @s[scores={HSRadiation=1..}] HSRadiation 1
execute unless dimension the_nether run scoreboard players remove @s[scores={HSRadiation=1..}] HSRadiation 1
scoreboard players set _RadDefense HSGlobals 1
execute if items entity @s armor.head *[custom_data~{HSLowRadProtect:true}] run scoreboard players remove @s[scores={HSRadiation=1..}] HSRadiation 1
execute if items entity @s armor.head *[custom_data~{HSLowRadProtect:true}] run scoreboard players add _RadDefense HSGlobals 1
execute if score @s FBWetness matches 1.. run scoreboard players remove @s[scores={HSRadiation=1..}] HSRadiation 2
# Find radiation value
execute store result storage hellscape RadCheck.Yaw int 1 run random value 0..359
execute store result storage hellscape RadCheck.Pitch int 1 run random value -80..80
execute anchored eyes positioned ^ ^ ^ run function hellscape:radcheck with storage hellscape RadCheck
# Radiation VFX
execute if score @s HSRadiation matches 100.. run playsound particle.soul_escape player @s ~ ~ ~ 0.4 2
execute if score @s HSRadiation matches 200.. run playsound particle.soul_escape player @s ~ ~ ~ 0.6 1.8
execute if score @s HSRadiation matches 400.. run playsound particle.soul_escape player @s ~ ~ ~ 0.9 1.5
execute if score @s HSRadiation matches 800.. run playsound particle.soul_escape player @s ~ ~ ~ 1.2 1.1
execute if score @s HSRadiation matches 200.. anchored eyes run particle dust{color:9247682,scale:1} ^ ^ ^-0.1 0.2 0.1 0.2 0 1
execute if score @s HSRadiation matches 600.. anchored eyes run particle landing_obsidian_tear ^ ^ ^0.1 0.2 0.1 0.2 0 1
execute if score @s HSRadiation matches 1000.. anchored eyes run particle falling_obsidian_tear ^ ^ ^0.3 0.2 0.1 0.2 0 1
execute if score @s HSRadiation matches 200.. unless score @s HSPrevRadiation matches 200.. run effect give @s nausea 5 0 true
execute if score @s HSRadiation matches 400.. unless score @s HSPrevRadiation matches 400.. run effect give @s nausea 7 0 true
execute if score @s HSRadiation matches 600.. unless score @s HSPrevRadiation matches 600.. run effect give @s nausea 10 0 true
execute if score @s HSRadiation matches 800.. unless score @s HSPrevRadiation matches 800.. run effect give @s nausea 15 0 true
scoreboard players reset _RadDefense HSGlobals
scoreboard players operation @s HSPrevRadiation = @s HSRadiation
# Actual radiation effects
execute if score @s HSRadiation matches 1000.. run effect give @s nausea 10 0 true
execute if score @s HSRadiation matches 1200.. run damage @s 1 hellscape:radiation