## >> From: sutils:recall
## >> At: Player setting new recall point
## >> As: Player setting new recall point
## >> Does: Set new recall
## >> Input: Name (string)
$execute unless data storage sageutils Recollection.$(Name) run data modify storage sageutils Recollection.$(Name) set from storage sageutils CreatingRecall
$execute if data storage sageutils Recollection.$(Name) run tag @s add SUSaving
$item modify entity @s weapon.mainhand [{function:"set_components",components:{"consumable":{animation:"spear",consume_seconds:10000}}},{function:"set_custom_data",tag:{"SURecallBook":true,"SURecall":$(Name)}},{function:"set_name",entity:"this",name:[{"text":'Recall $(Name)'}]}]
execute unless entity @s[tag=SUSaving] run return 0
xp set @s 0 levels
xp set @s 0 points
function sutils:recall/store