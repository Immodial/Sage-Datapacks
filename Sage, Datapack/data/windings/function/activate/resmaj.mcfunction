## >> From: windings:cast
## >> At: Spell containing the Resin Glyph
## >> As: Spell containing the Resin Glyph
## >> Does: Nothing yet
## >> Input: None
execute as @e[type=!#windings:ignored,distance=..3] run damage @s 5 retooled:magic_bolt at ~ ~ ~
playsound entity.creaking.attack player @a ~ ~ ~ 0.2 0.7
particle block{block_state:{Name:"minecraft:resin_block"}} ^ ^ ^ 0.6 0.4 0.4 0 6
particle block{block_state:{Name:"minecraft:resin_block"}} ^ ^ ^ 0.4 0.6 0.4 0 6
particle block{block_state:{Name:"minecraft:resin_block"}} ^ ^ ^ 0.4 0.4 0.6 0 6