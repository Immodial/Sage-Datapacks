## >> From: wounded:hurt/bludgeon (advancement)
## >> At: Player who was hurt by something explosive
## >> As: Player who was hurt by something explosive
## >> Does: Apply possible explosion wounds
## >> Input: None
# Randomly add wound
execute if score @s WDDamage matches 80.. unless function wounded:random/8 run tag @s add WDBrokenLeg
execute if score @s WDDamage matches 80.. unless function wounded:random/8 run tag @s add WDBrokenArm
execute if score @s WDDamage matches 120.. unless function wounded:random/5 run tag @s add WDBrokenLeg
execute if score @s WDDamage matches 120.. unless function wounded:random/5 run tag @s add WDBrokenArm
# Add wound data based on tag
execute if entity @s[tag=WDBrokenLeg,tag=!WDBrokenArm] run data modify storage wounded:injuries adding set value {Type:"brokenleg",Name:"Broken Leg",Duration:6000}
execute if entity @s[tag=WDBrokenArm] run data modify storage wounded:injuries adding set value {Type:"brokenarm",Name:"Broken Arm",Duration:6000}
# Apply wound
execute unless entity @s[tag=!WDBrokenLeg,tag=!WDBrokenArm] run function wounded:apply with entity @s
# Reset tags and damage score
tag @s remove WDBrokenLeg
tag @s remove WDBrokenArm
scoreboard players reset @s WDDamage
# Remove advancements
advancement revoke @s only wounded:hurt/explode