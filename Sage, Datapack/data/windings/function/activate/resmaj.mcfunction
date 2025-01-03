## >> From: windings:cast
## >> At: Spell containing the Resin Glyph
## >> As: Spell containing the Resin Glyph
## >> Does: Nothing yet
## >> Input: None
execute positioned ~-0.8 ~-0.8 ~-0.8 as @e[type=!#windings:ignored,dx=0.6,dy=0.6,dz=0.6] run damage @s 10 retooled:magic_bolt at ~ ~ ~
playsound entity.creaking.attack player @a ~ ~ ~ 0.2 0.55
particle block{block_state:{Name:"minecraft:resin_block"}} ^ ^ ^ 0.8 0.5 0.5 0 8
particle block{block_state:{Name:"minecraft:resin_block"}} ^ ^ ^ 0.5 0.8 0.5 0 8
particle block{block_state:{Name:"minecraft:resin_block"}} ^ ^ ^ 0.5 0.5 0.8 0 8