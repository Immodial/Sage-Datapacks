## >> From: apoca:tick
## >> At: Any player
## >> As: Any player
## >> Does: Run player modifiers
## >> Input: None
tag @s remove RestfulSlept
tag @s[tag=RestfulSleeping] add RestfulSlept
tag @s remove RestfulSleeping
execute unless data entity @s SleepingY run return fail
tag @s add RestfulSleeping
time add 1
effect give @s blindness 4 0 true
execute facing entity @a[tag=RestfulSleeping,tag=!RestfulSlept] feet run playsound block.wood.place player @s ^ ^ ^10 1 0.4 1
execute facing entity @a[tag=RestfulSleeping,tag=!RestfulSlept] feet run playsound block.wool.place player @s ^ ^ ^10 1 0.4 1