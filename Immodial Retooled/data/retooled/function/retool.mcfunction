## >> From: retooled:tick
## >> At: None
## >> As: Player with an item that has been modded but is currently unchanged
## >> Does: Replace item with modified version
## >> Input: None
execute if items entity @s weapon.mainhand stone_sword[!custom_data] run item modify entity @s weapon.mainhand retooled:retool/stone_sword
execute if items entity @s weapon.offhand stone_sword[!custom_data] run item modify entity @s weapon.offhand retooled:retool/stone_sword
execute if items entity @s weapon.mainhand stone_pickaxe[!custom_data] run item modify entity @s weapon.mainhand retooled:retool/stone_pickaxe
execute if items entity @s weapon.offhand stone_pickaxe[!custom_data] run item modify entity @s weapon.offhand retooled:retool/stone_pickaxe
execute if items entity @s weapon.mainhand mace[!custom_data] run item modify entity @s weapon.mainhand retooled:retool/mace
execute if items entity @s weapon.offhand mace[!custom_data] run item modify entity @s weapon.offhand retooled:retool/mace