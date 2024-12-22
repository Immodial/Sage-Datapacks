## >> From: apoca:loop/ghast
## >> At: Ghast with a Target
## >> As: Ghast with a Target
## >> Does: Dash in current Direction
## >> Input: None
particle gust ~ ~ ~ 1.2 1.2 1.2 0 100 force
execute store result entity @s Motion[0] double 0.0001 run data get entity @s Motion[0] 80000
execute store result entity @s Motion[2] double 0.0001 run data get entity @s Motion[2] 80000