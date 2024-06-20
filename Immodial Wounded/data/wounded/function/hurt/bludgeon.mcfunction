## >> From: wounded:hurt/bludgeon (advancement)
## >> At: Player who was hurt by something bludgeoning
## >> As: Player who was hurt by something bludgeoning
## >> Does: Apply possible bludgeon wounds
## >> Input: None
# Randomly add wound
execute unless function wounded:random/24 run tag @s add WDBruised
execute if score @s WDDamage matches 40.. unless function wounded:random/12 run tag @s add WDBruised
execute if score @s WDDamage matches 60.. unless function wounded:random/8 run tag @s add WDBruised
execute if score @s WDDamage matches 60.. unless function wounded:random/12 run tag @s add WDContused
execute if score @s WDDamage matches 80.. unless function wounded:random/5 run tag @s add WDBruised
execute if score @s WDDamage matches 80.. unless function wounded:random/8 run tag @s add WDContused
execute if score @s WDDamage matches 80.. unless function wounded:random/24 run tag @s add WDBrokenLeg
execute if score @s WDDamage matches 80.. unless function wounded:random/24 run tag @s add WDBrokenArm
execute if score @s WDDamage matches 100.. unless function wounded:random/12 run tag @s add WDBrokenLeg
execute if score @s WDDamage matches 100.. unless function wounded:random/12 run tag @s add WDBrokenArm
# Add wound data based on tag
execute if entity @s[tag=WDBruised,tag=!WDContused,tag=!WDBrokenLeg,tag=!WDBrokenArm] run data modify storage wounded:injuries adding set value {Type:"bludgeonedlight",Name:"Bruise",Duration:1200}
execute if entity @s[tag=WDContused,tag=!WDBrokenLeg,tag=!WDBrokenArm] run data modify storage wounded:injuries adding set value {Type:"bludgeonedmedium",Name:"Contusion",Duration:3600}
execute if entity @s[tag=WDBrokenLeg,tag=!WDBrokenArm] run data modify storage wounded:injuries adding set value {Type:"brokenleg",Name:"Broken Leg",Duration:6000}
execute if entity @s[tag=WDBrokenArm] run data modify storage wounded:injuries adding set value {Type:"brokenarm",Name:"Broken Arm",Duration:6000}
# Apply wound
execute unless entity @s[tag=!WDBruised,tag=!WDContused,tag=!WDBrokenLeg,tag=!WDBrokenArm] run function wounded:apply with entity @s
# Reset tags and damage score
tag @s remove WDBruised
tag @s remove WDContused
tag @s remove WDBrokenLeg
tag @s remove WDBrokenArm
scoreboard players reset @s WDDamage
# Remove advancements
advancement revoke @s only wounded:hurt/bludgeon_inherent
advancement revoke @s only wounded:hurt/bludgeon_weapon
advancement revoke @s only wounded:hurt/bludgeon_override
advancement revoke @s only wounded:hurt/bludgeon_mob