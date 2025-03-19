## >> From: manifold:loop
## >> At: Sleeping bag marker
## >> As: Sleeping bag marker
## >> Does: Periodically spawn illagers when players are not nearby
## >> Input: None
particle enchanted_hit ~ ~0.2 ~ 0.15 0.25 0.25 0 8
execute unless block ~ ~ ~ grindstone run kill @s
execute if entity @a[gamemode=!spectator,distance=..30] run return fail
execute as @e[type=vindicator,distance=..80] run scoreboard players add _VindicatorPopulation MNFGlobals 1
execute if predicate {"condition":"random_chance","chance":0.0007} unless score _VindicatorPopulation MNFGlobals matches 25.. run summon vindicator ~ ~1 ~
execute if predicate {"condition":"random_chance","chance":0.0007} unless score _VindicatorPopulation MNFGlobals matches 25.. run summon vindicator ~ ~ ~
item replace entity @n[type=vindicator,distance=..0.1] weapon.mainhand with iron_pickaxe[item_name=[{"translate":"item.retooled.iron_hammer"}],custom_data={"RTModified":true},item_model="retooled:iron_hammer",max_damage=250,tool={rules:[{"blocks": "#retooled:mineable/hammer", "speed": 10, "correct_for_drops": true},{"blocks": "#minecraft:incorrect_for_iron_tool", "correct_for_drops": false}]},lore=[{"text": ""},{"translate": "item.modifiers.mainhand","color": "gray","italic": false},{"text": " 8 ","color": "dark_green","italic": false,"extra": [{"translate": "attribute.name.attack_damage"}]},{"text": " 0.8 ","color": "dark_green","italic": false,"extra": [{"translate": "attribute.name.attack_speed"}]},{"translate": "trait.retooled.length.medium","color": "dark_green","italic": false},{"translate": "trait.retooled.knockback.strong","color": "dark_green","italic": false}],attribute_modifiers=[{"id": "retooled:weapon_attack","type": "minecraft:attack_damage","amount": 7,"operation": "add_value","slot": "mainhand"},{"id": "retooled:weapon_length","type": "minecraft:entity_interaction_range","amount": 1,"operation": "add_value","slot": "mainhand"},{"id": "retooled:weapon_speed","type": "minecraft:attack_speed","amount": -3.2,"operation": "add_value","slot": "mainhand"},{"id": "retooled:weapon_knockback","type": "minecraft:attack_knockback","amount": 1.5,"operation": "add_value","slot": "mainhand"}],tooltip_display={"hidden_components": ["minecraft:attribute_modifiers"]}]
scoreboard players reset _VindicatorPopulation MNFGlobals