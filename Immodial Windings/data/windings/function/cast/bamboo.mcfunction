## >> From: windings:cast/call
## >> At: Player casting a spell
## >> As: Player casting a spell
## >> Does: Create bamboo
## >> Input: None
execute at @s if block ~2 ~-1 ~2 #minecraft:bamboo_plantable_on run place feature bamboo_some_podzol ~2 ~ ~2
execute at @s if block ~-2 ~-1 ~2 #minecraft:bamboo_plantable_on run place feature bamboo_some_podzol ~-2 ~ ~2
execute at @s if block ~-2 ~-1 ~-2 #minecraft:bamboo_plantable_on run place feature bamboo_some_podzol ~-2 ~ ~-2
execute at @s if block ~2 ~-1 ~-2 #minecraft:bamboo_plantable_on run place feature bamboo_some_podzol ~2 ~ ~-2