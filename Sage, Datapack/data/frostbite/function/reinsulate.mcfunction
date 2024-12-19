## >> From: frostbite:swap (advancement)
## >> At: Player moving an item
## >> As: Player moving an item
## >> Does: Update player insulation
## >> Input: None
# Set insulation from light insulation
execute store result score @s FBInsulation if items entity @s armor.* #frostbite:insulating_light
# Add medium insulation (doubled)
execute store result score _Insulation FBGlobals if items entity @s armor.* #frostbite:insulating_medium
scoreboard players operation _Insulation FBGlobals += _Insulation FBGlobals
scoreboard players operation @s FBInsulation += _Insulation FBGlobals
# Add high insulation (tripled)
execute store result score _Insulation FBGlobals if items entity @s armor.* #frostbite:insulating_heavy
scoreboard players set _InsulationModifier FBGlobals 3
scoreboard players operation _Insulation FBGlobals *= _InsulationModifier FBGlobals
scoreboard players operation @s FBInsulation += _Insulation FBGlobals
# Reset variables and revoke advancement
scoreboard players reset __Insulation FBGlobals
scoreboard players reset _InsulationModifier FBGlobals
advancement revoke @s only frostbite:swap