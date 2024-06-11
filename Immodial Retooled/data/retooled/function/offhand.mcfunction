## >> From: retooled:init
## >> At: None
## >> As: Server
## >> Does: Cause weapons effects and 
## >> Input: None
execute if items entity @s weapon.offhand *[minecraft:potion_contents={potion:"minecraft:water"}] run return run item modify entity @s weapon.offhand [{"function":"minecraft:set_potion","id": "minecraft:awkward"}]
item modify entity @s weapon.offhand [{"function":"minecraft:set_potion","id":"minecraft:water"}]