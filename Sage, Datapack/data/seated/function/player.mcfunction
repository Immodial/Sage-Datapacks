## >> From: seated:loop
## >> At: Any Player
## >> As: Any Player
## >> Does: Allow players to sit
## >> Input: None
scoreboard players remove @s[scores={STDCrouchPower=1..}] STDCrouchPower 1
tag @s[tag=STDCrouching] add STDCrouched
tag @s remove STDCrouching
execute if predicate seated:crouch run tag @s add STDCrouching
execute if entity @s[tag=STDCrouching,tag=!STDCrouched] unless score @s STDCrouchPower matches 30.. run scoreboard players add @s STDCrouchPower 15
tag @s remove STDCrouched
execute if predicate seated:sit if score @s[tag=STDGrounded] STDCrouchPower matches 16.. run function seated:sit
execute if data entity @s {OnGround:true} run return run tag @s add STDGrounded
tag @s remove STDGrounded