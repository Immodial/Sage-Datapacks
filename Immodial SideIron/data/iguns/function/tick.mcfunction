## >> From: iguns:init, iguns:tick
## >> At: None
## >> As: Server
## >> Does: Run looping checks for guns
## >> Input: None
# Fire gun
execute as @a[tag=!IGUsing,scores={IGUseTime=1..}] if items entity @s weapon.mainhand *[custom_data~{IGLoaded:true}] at @s anchored eyes positioned ^ ^ ^ run function iguns:fire/call with entity @s SelectedItem.components.minecraft:custom_data.IGAmmo[0]
# Remove use time from all players not using guns
scoreboard players set @a[tag=!IGUsing] IGUseTime 0
tag @a[tag=!IGUsing] remove IGUsed
tag @a remove IGUsing
# Make sure advancement is removed
advancement revoke @a only iguns:use
# Move projectiles
execute as @e[tag=IGProjectile] at @s run function iguns:projectile/call with entity @s data
# Loop
schedule function iguns:tick 1