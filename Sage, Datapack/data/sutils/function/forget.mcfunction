## >> From: Command
## >> At: Player running command
## >> As: Player running command
## >> Does: Set new home
## >> Input: Name
execute unless data entity @s SelectedItem.components.minecraft:custom_name run return run tellraw @s {"text":"This isn't a recall item."}
function sutils:recall/removal with entity @s SelectedItem.components.minecraft:custom_data
summon item ~ ~ ~ {Tags:["SUForgottenItem"],Item:{id:"minecraft:stone",count:1}}
data modify entity @n[tag=SUForgottenItem] Item.id set from entity @s SelectedItem.id
data modify entity @n[tag=SUForgottenItem] Item.count set from entity @s SelectedItem.count
item modify entity @n[tag=SUForgottenItem] contents {function:"set_name",entity:"this",name:{entity:"@s",nbt:"SelectedItem.components.minecraft:custom_data.SURecall"}}
item replace entity @s weapon.mainhand from entity @n[tag=SUForgottenItem] contents
kill @n[tag=SUForgottenItem]