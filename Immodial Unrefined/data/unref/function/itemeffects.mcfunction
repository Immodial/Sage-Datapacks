## >> From: unref:tick
## >> At: Any item
## >> As: Any item
## >> Does: Modify items
## >> Input: None
execute if items entity @s contents #unref:refineable[!custom_data] run function unref:itemfix
execute if items entity @s contents raw_iron[custom_data~{URScrap:true}] if block ~ ~ ~ #unref:cooling run function unref:modify/coolironscrap
execute if items entity @s contents iron_nugget[custom_data~{URMolten:true}] if block ~ ~ ~ #unref:cooling run function unref:modify/coolmoltenironnugget
execute if items entity @s contents iron_nugget[custom_data~{URMolten:true},count={min:16}] run function unref:modify/mixmolteniron
execute if items entity @s contents iron_ingot[custom_data~{URMalleable:true}] if block ~ ~ ~ #unref:cooling run function unref:modify/coolmalleableiron
execute if items entity @s contents cooked_porkchop[custom_data~{URIronIngot:true}] if block ~ ~ ~ #unref:melting run function unref:modify/heatironingot
execute if items entity @s contents cooked_porkchop[custom_data~{URIronNugget:true}] if block ~ ~ ~ #unref:melting run function unref:modify/heatironnugget
scoreboard players add @s URCoolTime 1
# Cause smoke loop
scoreboard players add @s URSmokeLoop 1
scoreboard players set @s[scores={URSmokeLoop=20..}] URSmokeLoop 0