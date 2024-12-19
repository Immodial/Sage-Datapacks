## >> From: sutils:use
## >> At: Player using recall book
## >> As: Player using recall book
## >> Does: Access recall point
## >> Input: SURecall (string)
$execute unless data storage sageutils Recollection."$(SURecall)" run return run tellraw @s {"text":"No Recall Point by that name."}
$function sutils:recall/load with storage sageutils Recollection."$(SURecall)"