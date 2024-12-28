## >> From: apoca:tick
## >> At: Any player
## >> As: Any player
## >> Does: Run player modifiers
## >> Input: None
# Detect dead player
execute if entity @s[nbt=!{DeathTime:0s}] unless entity @s[tag=APOCDead] run tag @s add APOCDying
execute if entity @s[tag=APOCDying] run function apoca:special/grave
execute if entity @s[tag=APOCDying] on attacker if entity @s[type=#apoca:champion] run function apoca:special/champion
tag @s remove APOCDying
execute if entity @s[nbt=!{DeathTime:0s}] run return run tag @s add APOCDead
tag @s remove APOCDead
# Gather from gravestones
execute as @e[type=marker,tag=APOCGrave,distance=..2,scores={APOCGraveTime=100..}] at @s run function apoca:special/gravedrop
kill @e[type=text_display,tag=APOCGraveName,distance=..2,scores={APOCGraveTime=100..}]
# Heal over time
scoreboard players add @s APOCHealTime 1
execute store result score _MaxHealth APOCGlobals run attribute @s max_health get
execute if score @s APOCHealth >= _MaxHealth APOCGlobals run scoreboard players reset @s APOCHealTime
effect give @s[scores={APOCHunger=20..,APOCHealTime=100..}] regeneration 1 2 true
effect give @s[scores={APOCHunger=20..,APOCHealTime=100..}] hunger 1 39 true
scoreboard players reset @s[scores={APOCHunger=20..,APOCHealTime=100..}] APOCHealTime
effect give @s[scores={APOCHunger=17..19,APOCHealTime=400..}] regeneration 1 2 true
effect give @s[scores={APOCHunger=17..19,APOCHealTime=400..}] hunger 1 19 true
scoreboard players reset @s[scores={APOCHunger=17..19,APOCHealTime=400..}] APOCHealTime
effect give @s[scores={APOCHunger=11..16,APOCHealTime=1000..}] regeneration 1 2 true
scoreboard players reset @s[scores={APOCHunger=11..16,APOCHealTime=1000..}] APOCHealTime
# Spawn phantoms
execute unless predicate apoca:daytime positioned ~ 164 ~ if entity @s[dy=1000] unless entity @e[type=phantom,distance=..100] unless function apoca:random/48 run playsound entity.phantom.flap hostile @a ~ ~48 ~ 100 0.4
execute unless predicate apoca:daytime positioned ~ 164 ~ if entity @s[dy=1000] unless entity @e[type=phantom,distance=..100] unless function apoca:random/2400 run function apoca:special/haunt
# Track sleeping state
tag @s remove RestfulSlept
tag @s[tag=RestfulSleeping] add RestfulSlept
tag @s remove RestfulSleeping
execute unless data entity @s SleepingY run return fail
# Set blindness, sleep state, and increase time
tag @s add RestfulSleeping
time add 1
effect give @s blindness 4 0 true
# Play player sleeping sound
execute facing entity @a[tag=RestfulSleeping,tag=!RestfulSlept] feet run playsound block.wood.place player @s ^ ^ ^10 1 0.4 1
execute facing entity @a[tag=RestfulSleeping,tag=!RestfulSlept] feet run playsound block.wool.place player @s ^ ^ ^10 1 0.4 1