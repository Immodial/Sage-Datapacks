## >> From: wounded:hurt/fall (advancement)
## >> At: Player who fell
## >> As: Player who fell
## >> Does: Apply possible pierce wounds
## >> Input: None
# Randomly add wound
execute if score @s WDDamage matches 60.. unless function wounded:random/24 run tag @s add WDBruised
execute if score @s WDDamage matches 80.. unless function wounded:random/12 run tag @s add WDBruised
execute if score @s WDDamage matches 80.. unless function wounded:random/24 run tag @s add WDBrokenLeg
execute if score @s WDDamage matches 100.. unless function wounded:random/8 run tag @s add WDBruised
execute if score @s WDDamage matches 100.. unless function wounded:random/12 run tag @s add WDContused
execute if score @s WDDamage matches 100.. unless function wounded:random/12 run tag @s add WDBrokenLeg
execute if score @s WDDamage matches 120.. unless function wounded:random/5 run tag @s add WDBruised
execute if score @s WDDamage matches 120.. unless function wounded:random/8 run tag @s add WDContused
execute if score @s WDDamage matches 120.. unless function wounded:random/8 run tag @s add WDBrokenLeg
# Add wound data based on tag
execute if entity @s[tag=WDBruised,tag=!WDContused,tag=!WDBrokenLeg] run data modify storage wounded:injuries adding set value {Type:"bludgeonedlight",Name:"Bruise",Duration:1200}
execute if entity @s[tag=WDContused,tag=!WDBrokenLeg] run data modify storage wounded:injuries adding set value {Type:"bludgeonedmedium",Name:"Contusion",Duration:3600}
execute if entity @s[tag=WDBrokenLeg] run data modify storage wounded:injuries adding set value {Type:"brokenleg",Name:"Broken Leg",Duration:6000}
# Apply wound
execute unless entity @s[tag=!WDBruised,tag=!WDContused,tag=!WDBrokenLeg] run function wounded:apply with entity @s
# Reset tags and damage score
tag @s remove WDBruised
tag @s remove WDContused
tag @s remove WDBrokenLeg
scoreboard players reset @s WDDamage
# Remove advancements
advancement revoke @s only wounded:hurt/fall