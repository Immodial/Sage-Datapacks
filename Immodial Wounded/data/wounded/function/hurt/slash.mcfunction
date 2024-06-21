## >> From: wounded:hurt/slash (advancement)
## >> At: Player who was hurt by something slashing
## >> As: Player who was hurt by something slashing
## >> Does: Apply possible slash wounds
## >> Input: None
# Randomly add wound
execute unless function wounded:random/12 run tag @s add WDScratched
execute if score @s WDDamage matches 40.. unless function wounded:random/8 run tag @s add WDScratched
execute if score @s WDDamage matches 40.. unless function wounded:random/12 run tag @s add WDSliced
execute if score @s WDDamage matches 40.. unless function wounded:random/24 run tag @s add WDLaceration
execute if score @s WDDamage matches 60.. unless function wounded:random/8 run tag @s add WDSliced
execute if score @s WDDamage matches 60.. unless function wounded:random/12 run tag @s add WDLaceration
execute if score @s WDDamage matches 80.. unless function wounded:random/5 run tag @s add WDSliced
execute if score @s WDDamage matches 80.. unless function wounded:random/8 run tag @s add WDLaceration
# Add wound data based on tag
execute if entity @s[tag=WDScratched,tag=!WDSliced,tag=!WDLaceration] run data modify storage wounded:injuries adding set value {Type:"slashedlight",Name:"Scratch",Duration:2400}
execute if entity @s[tag=WDSliced,tag=!WDLaceration] run data modify storage wounded:injuries adding set value {Type:"slashedmedium",Name:"Slice",Duration:3600}
execute if entity @s[tag=WDLaceration] run data modify storage wounded:injuries adding set value {Type:"slashedheavy",Name:"Laceration",Duration:6000}
# Apply wound
execute unless entity @s[tag=!WDScratched,tag=!WDSliced,tag=!WDLaceration] run function wounded:apply with entity @s
# Reset tags and damage score
tag @s remove WDScratched
tag @s remove WDSliced
tag @s remove WDLaceration
scoreboard players reset @s WDDamage
# Remove advancements
advancement revoke @s only wounded:hurt/slash_inherent
advancement revoke @s only wounded:hurt/slash_weapon
advancement revoke @s only wounded:hurt/slash_override
advancement revoke @s only wounded:hurt/slash_mob