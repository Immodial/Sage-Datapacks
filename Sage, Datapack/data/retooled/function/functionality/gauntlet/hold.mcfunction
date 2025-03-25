## >> From: retooled:use
## >> At: Player with a Gauntlet
## >> As: Player with a Gauntlet
## >> Does: Deal 
## >> Input: None
scoreboard players add @s RTGauntletTime 2
execute if score @s RTGauntletTime matches 30.. if items entity @s weapon.mainhand *[custom_data~{RTGauntlet:true}] run item modify entity @s weapon.mainhand retooled:functionality/gauntlet_disable
execute if score @s RTGauntletTime matches 30.. if items entity @s weapon.offhand *[custom_data~{RTGauntlet:true}] run item modify entity @s weapon.offhand retooled:functionality/gauntlet_disable
execute if score @s RTGauntletTime matches 30..49 run playsound entity.blaze.hurt player @a ~ ~ ~ 0.6 1.6
execute if score @s RTGauntletTime matches 30.. run scoreboard players set @s RTGauntletTime 50