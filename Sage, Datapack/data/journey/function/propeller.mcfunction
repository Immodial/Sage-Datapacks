## >> From: journey:plane
## >> At: Source plane
## >> As: Propeller on plane being ridden
## >> Does: Rotate propeller
## >> Input: None
tag @s[tag=JNYFrame1,tag=JNYFrame2] remove JNYFrame1
tag @s[tag=JNYFrame2,tag=JNYFrame3] remove JNYFrame2
tag @s[tag=JNYFrame3,tag=JNYFrame4] remove JNYFrame3
tag @s[tag=JNYFrame4,tag=JNYFrame1] remove JNYFrame4
data merge entity @s[tag=JNYFrame1] {transformation:{left_rotation:{axis:[0f,0f,1f],angle:0f}},start_interpolation:0}
data merge entity @s[tag=JNYFrame2] {transformation:{left_rotation:{axis:[0f,0f,1f],angle:1.57f}},start_interpolation:0}
data merge entity @s[tag=JNYFrame3] {transformation:{left_rotation:{axis:[0f,0f,1f],angle:3.14f}},start_interpolation:0}
data merge entity @s[tag=JNYFrame4] {transformation:{left_rotation:{axis:[0f,0f,1f],angle:4.71f}},start_interpolation:0}
execute if entity @s[tag=JNYFrame1] run return run tag @s add JNYFrame2
execute if entity @s[tag=JNYFrame2] run return run tag @s add JNYFrame3
execute if entity @s[tag=JNYFrame3] run return run tag @s add JNYFrame4
execute if entity @s[tag=JNYFrame4] run return run tag @s add JNYFrame1