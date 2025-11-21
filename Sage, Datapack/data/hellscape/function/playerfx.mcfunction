## >> From: hellscape:vfx (advancement)
## >> At: Any player
## >> As: Any player
## >> Does: Apply nether effects
## >> Input: None
advancement revoke @s only hellscape:vfx
# Radiation VFX
execute if score @s HSRadiation matches 150.. run playsound particle.soul_escape player @s ~ ~ ~ 0.4 2
execute if score @s HSRadiation matches 300.. run playsound particle.soul_escape player @s ~ ~ ~ 0.6 1.8
execute if score @s HSRadiation matches 450.. run playsound particle.soul_escape player @s ~ ~ ~ 0.9 1.5
execute if score @s HSRadiation matches 600.. run playsound particle.soul_escape player @s ~ ~ ~ 1.2 1.1
execute if score @s HSRadiation matches 300.. anchored eyes run particle dust{color:9247682,scale:1} ^ ^ ^-0.1 0.2 0.1 0.2 0 1
execute if score @s HSRadiation matches 450.. anchored eyes run particle landing_obsidian_tear ^ ^ ^0.1 0.2 0.1 0.2 0 1
execute if score @s HSRadiation matches 600.. anchored eyes run particle falling_obsidian_tear ^ ^ ^0.3 0.2 0.1 0.2 0 1
execute if score @s HSRadiation matches 150.. unless score @s HSPrevRadiation matches 150.. run effect give @s nausea 5 0 true
execute if score @s HSRadiation matches 300.. unless score @s HSPrevRadiation matches 300.. run effect give @s nausea 7 0 true
execute if score @s HSRadiation matches 450.. unless score @s HSPrevRadiation matches 450.. run effect give @s nausea 10 0 true
execute if score @s HSRadiation matches 600.. unless score @s HSPrevRadiation matches 600.. run effect give @s nausea 15 0 true
scoreboard players reset _RadDefense HSGlobals
scoreboard players operation @s HSPrevRadiation = @s HSRadiation
# Actual radiation effects
execute if score @s HSRadiation matches 700.. run effect give @s nausea 10 0 true
execute if score @s HSRadiation matches 800.. run damage @s 1 hellscape:radiation