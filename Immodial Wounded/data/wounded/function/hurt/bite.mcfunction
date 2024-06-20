## >> From: wounded:hurt/bite (advancement)
## >> At: Player who was bitten
## >> As: Player who was bitten
## >> Does: Apply possible pierce wounds
## >> Input: None
# Randomly add wound
execute unless function wounded:random/12 run tag @s add WDPricked
execute if score @s WDDamage matches 40.. unless function wounded:random/8 run tag @s add WDPricked
execute if score @s WDDamage matches 40.. unless function wounded:random/8 run tag @s add WDPunctured
execute if score @s WDDamage matches 60.. unless function wounded:random/5 run tag @s add WDPunctured
# Add wound data based on tag
execute if entity @s[tag=WDPricked,tag=!WDPunctured] run data modify storage wounded:injuries adding set value {Type:"piercedlight",Name:"Prick",Duration:1200}
execute if entity @s[tag=WDPunctured] run data modify storage wounded:injuries adding set value {Type:"piercedmedium",Name:"Puncture",Duration:2400}
# Apply wound twice
data modify storage wounded:injuries addingDouble set from storage wounded:injuries adding
execute unless entity @s[tag=!WDPricked,tag=!WDPunctured] run function wounded:apply with entity @s
data modify storage wounded:injuries adding set from storage wounded:injuries addingDouble
execute unless entity @s[tag=!WDPricked,tag=!WDPunctured] run function wounded:apply with entity @s
data remove storage wounded:injuries addingDouble
# Reset tags and damage score
tag @s remove WDPricked
tag @s remove WDPunctured
scoreboard players reset @s WDDamage
# Remove advancements
advancement revoke @s only wounded:hurt/bite