## >> From: journey:player
## >> At: Any player
## >> As: Any player
## >> Does: Check if standing on path
## >> Input: None
execute if block ~ ~-0.3 ~ dirt_path run return 1
execute if block ~0.75 ~-0.3 ~ dirt_path run return 1
execute if block ~-0.75 ~-0.3 ~ dirt_path run return 1
execute if block ~ ~-0.3 ~0.75 dirt_path run return 1
execute if block ~ ~-0.3 ~-0.75 dirt_path run return 1
execute if block ~0.75 ~-0.3 ~0.75 dirt_path run return 1
execute if block ~-0.75 ~-0.3 ~0.75 dirt_path run return 1
execute if block ~0.75 ~-0.3 ~-0.75 dirt_path run return 1
execute if block ~-0.75 ~-0.3 ~-0.75 dirt_path run return 1