## >> From: retooled:tick
## >> At: None
## >> As: Player with an item that has been modded but is currently unchanged
## >> Does: Replace item with modified version
## >> Input: None
execute if items entity @s armor.head leather_helmet[!custom_data] run item modify entity @s armor.head retooled:reequip/leather_helmet
execute if items entity @s armor.chest leather_chestplate[!custom_data] run item modify entity @s armor.chest retooled:reequip/leather_chestplate
execute if items entity @s armor.legs leather_leggings[!custom_data] run item modify entity @s armor.legs retooled:reequip/leather_leggings
execute if items entity @s armor.feet leather_boots[!custom_data] run item modify entity @s armor.feet retooled:reequip/leather_boots