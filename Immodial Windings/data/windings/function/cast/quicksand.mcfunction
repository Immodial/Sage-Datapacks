## >> From: windings:cast/call
## >> At: Player casting a spell
## >> As: Player casting a spell
## >> Does: Sink enemies in front of you into the ground
## >> Input: None
execute positioned ^ ^ ^3 positioned ~-1 ~ ~-1 as @e[type=!#windings:ignored,dx=1,dy=1,dz=1] at @s run tp @s ~ ~-2 ~
execute positioned ^ ^ ^5 positioned ~-1 ~ ~-1 as @e[type=!#windings:ignored,dx=1,dy=1,dz=1] at @s run tp @s ~ ~-2 ~
execute positioned ^ ^ ^7 positioned ~-1 ~ ~-1 as @e[type=!#windings:ignored,dx=1,dy=1,dz=1] at @s run tp @s ~ ~-2 ~