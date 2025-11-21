## >> From: hellscape:calculate (advancement)
## >> At: Any player
## >> As: Any player
## >> Does: Apply nether effects
## >> Input: None
advancement revoke @s only hellscape:calculate
# Reset radiation if dead or in creative
execute if entity @s[nbt=!{DeathTime:0s}] run return run scoreboard players reset @s HSRadiation
execute if entity @s[gamemode=!survival,gamemode=!adventure] run return run scoreboard players reset @s HSRadiation
# Remove radiation
scoreboard players set _RadDefense HSGlobals 0
execute unless dimension the_nether run scoreboard players remove @s[scores={HSRadiation=1..}] HSRadiation 1
execute if items entity @s armor.head *[custom_data~{HSLowRadProtect:true}] run scoreboard players remove @s[scores={HSRadiation=1..}] HSRadiation 1
execute if items entity @s armor.head *[custom_data~{HSLowRadProtect:true}] run scoreboard players add _RadDefense HSGlobals 1
execute if score @s FBWetness matches 1.. run scoreboard players remove @s[scores={HSRadiation=1..}] HSRadiation 2
# Find radiation value
execute store result storage hellscape RadCheck.Yaw int 1 run random value 0..359
execute store result storage hellscape RadCheck.Pitch int 1 run random value -80..80
execute anchored eyes positioned ^ ^ ^ run function hellscape:radcheck with storage hellscape RadCheck