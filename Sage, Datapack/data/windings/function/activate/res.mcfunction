## >> From: windings:cast
## >> At: Spell containing the Resin Glyph
## >> As: Spell containing the Resin Glyph
## >> Does: Nothing yet
## >> Input: None
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#windings:ignored,dx=0,dy=0,dz=0] run damage @s 3 windings:resin_glyph at ~ ~ ~
playsound entity.creaking.attack player @a ~ ~ ~ 0.2 0.7
particle block{block_state:{Name:"minecraft:resin_block"}} ^ ^ ^ 0.6 0.4 0.4 0 6
particle block{block_state:{Name:"minecraft:resin_block"}} ^ ^ ^ 0.4 0.6 0.4 0 6
particle block{block_state:{Name:"minecraft:resin_block"}} ^ ^ ^ 0.4 0.4 0.6 0 6