## >> From: seated:loop
## >> At: Any Player
## >> As: Any Player
## >> Does: Allow players to sit
## >> Input: None
# Sit on beds when waking up
execute if entity @s[tag=STDSleeping] unless data entity @s sleeping_pos run function seated:sleepsit
execute if data entity @s sleeping_pos run tag @s add STDSleeping
execute store result score @s STDSleepPosX run data get entity @s sleeping_pos[0] 1
execute store result score @s STDSleepPosY run data get entity @s sleeping_pos[1] 1
execute store result score @s STDSleepPosZ run data get entity @s sleeping_pos[2] 1
# Sit on beds when dying
execute if entity @s[tag=STDDead] if data entity @s {DeathTime:0s} run function seated:deathsit
execute unless data entity @s {DeathTime:0s} run return run tag @s add STDDead
tag @s remove STDDead
# Update crouch state
scoreboard players remove @s[scores={STDCrouchPower=1..}] STDCrouchPower 1
tag @s[tag=STDCrouching] add STDCrouched
tag @s remove STDCrouching
execute if predicate seated:crouch run tag @s add STDCrouching
execute if entity @s[tag=STDCrouching,tag=!STDCrouched] unless score @s STDCrouchPower matches 30.. run scoreboard players add @s STDCrouchPower 15
tag @s remove STDCrouched
# Sit if jumping backward after crouching more than once and being grounded
execute if predicate seated:sit if score @s[tag=STDGrounded] STDCrouchPower matches 16.. run function seated:sit
# Update grounded state
execute if data entity @s {OnGround:true} run return run tag @s add STDGrounded
tag @s remove STDGrounded