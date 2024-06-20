## >> From: wounded:hurt/pierce (advancement)
## >> At: Player who was hurt by something piercing
## >> As: Player who was hurt by something piercing
## >> Does: Apply possible pierce wounds
## >> Input: None
# Randomly add wound
execute unless function wounded:random/24 run tag @s add WDPricked
execute if score @s WDDamage matches 40.. unless function wounded:random/12 run tag @s add WDPricked
execute if score @s WDDamage matches 40.. unless function wounded:random/12 run tag @s add WDPunctured
execute if score @s WDDamage matches 60.. unless function wounded:random/8 run tag @s add WDPunctured
execute if score @s WDDamage matches 60.. unless function wounded:random/12 run tag @s add WDRuptured
execute if score @s WDDamage matches 80.. unless function wounded:random/5 run tag @s add WDPunctured
execute if score @s WDDamage matches 80.. unless function wounded:random/8 run tag @s add WDRuptured
execute if score @s WDDamage matches 100.. unless function wounded:random/5 run tag @s add WDRuptured
# Add wound data based on tag
execute if entity @s[tag=WDPricked,tag=!WDPunctured,tag=!WDRuptured] run data modify storage wounded:injuries adding set value {Type:"piercedlight",Name:"Prick",Duration:1200}
execute if entity @s[tag=WDPunctured,tag=!WDRuptured] run data modify storage wounded:injuries adding set value {Type:"piercedmedium",Name:"Puncture",Duration:2400}
execute if entity @s[tag=WDRuptured] run data modify storage wounded:injuries adding set value {Type:"piercedheavy",Name:"Rupture",Duration:4800}
# Apply wound
execute unless entity @s[tag=!WDPricked,tag=!WDPunctured,tag=!WDRuptured] run function wounded:apply with entity @s
# Reset tags and damage score
tag @s remove WDPricked
tag @s remove WDPunctured
tag @s remove WDRuptured
scoreboard players reset @s WDDamage
# Remove advancements
advancement revoke @s only wounded:hurt/pierce_inherent
advancement revoke @s only wounded:hurt/pierce_weapon
advancement revoke @s only wounded:hurt/pierce_override
advancement revoke @s only wounded:hurt/pierce_mob