## >> From: frostbite:longloop
## >> At: None
## >> As: Any player in creative or spectator
## >> Does: Refresh UI
## >> Input: None
execute if score @s FBTemperature matches 2500.. run return run title @s actionbar [{"text":" \uE017 \uF017","font":"frostbite:tempbarlow","color":"#4e5c24"}]
execute if score @s FBTemperature matches 2200..2499 run return run title @s actionbar [{"text":" \uE016 \uF016","font":"frostbite:tempbarlow","color":"#4e5c24"}]
execute if score @s FBTemperature matches 1800..2199 run return run title @s actionbar [{"text":" \uE015 \uF015","font":"frostbite:tempbarlow","color":"#4e5c24"}]
execute if score @s FBTemperature matches 1440..1799 run return run title @s actionbar [{"text":" \uE014 \uF014","font":"frostbite:tempbarlow","color":"#4e5c24"}]
execute if score @s FBTemperature matches 1080..1439 run return run title @s actionbar [{"text":" \uE013 \uF013","font":"frostbite:tempbarlow","color":"#4e5c24"}]
execute if score @s FBTemperature matches 720..1079 run return run title @s actionbar [{"text":" \uE012 \uF012","font":"frostbite:tempbarlow","color":"#4e5c24"}]
execute if score @s FBTemperature matches 360..719 run return run title @s actionbar [{"text":" \uE011 \uF011","font":"frostbite:tempbarlow","color":"#4e5c24"}]
execute if score @s FBTemperature matches -359..359 run return run title @s actionbar [{"text":" \uE000 \uF000","font":"frostbite:tempbarlow","color":"#4e5c24"}]
execute if score @s FBTemperature matches -719..-360 run return run title @s actionbar [{"text":" \uE021 \uF021","font":"frostbite:tempbarlow","color":"#4e5c24"}]
execute if score @s FBTemperature matches -1079..-720 run return run title @s actionbar [{"text":" \uE022 \uF022","font":"frostbite:tempbarlow","color":"#4e5c24"}]
execute if score @s FBTemperature matches -1439..-1080 run return run title @s actionbar [{"text":" \uE023 \uF023","font":"frostbite:tempbarlow","color":"#4e5c24"}]
execute if score @s FBTemperature matches -1799..-1440 run return run title @s actionbar [{"text":" \uE024 \uF024","font":"frostbite:tempbarlow","color":"#4e5c24"}]
execute if score @s FBTemperature matches -2199..-1800 run return run title @s actionbar [{"text":" \uE025 \uF025","font":"frostbite:tempbarlow","color":"#4e5c24"}]
execute if score @s FBTemperature matches -2499..-2200 run return run title @s actionbar [{"text":" \uE026 \uF026","font":"frostbite:tempbarlow","color":"#4e5c24"}]
execute if score @s FBTemperature matches ..-2500 run return run title @s actionbar [{"text":" \uE027 \uF027","font":"frostbite:tempbarlow","color":"#4e5c24"}]