## >> From: apoca:zombie
## >> At: Zombie who just started charging to summon a horde
## >> As: Zombie who just started charging to summon a horde
## >> Does: Apply chargeup variables
## >> Input: None
tag @s add APOCHordeCharging
scoreboard players set @s APOCHordeCooldown 70
rotate @s ~ 90
effect give @s slowness 5 9 true
playsound entity.zombie.ambient hostile @a ~ ~ ~ 1.6 0.2
playsound entity.zombie.ambient hostile @a ~ ~ ~ 1.6 0.5