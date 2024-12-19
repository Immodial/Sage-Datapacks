## >> From: sutils:use
## >> At: Player using recall book
## >> As: Player using recall book
## >> Does: Access recall point
## >> Input: SURecall (string)
$execute unless data storage sageutils Recollection."$(SURecall)" run return run tellraw @s {"text":"Can't forget what you don't Recall."}
$data remove storage sageutils Recollection."$(SURecall)"