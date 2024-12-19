## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Create storage and scoreboard
## >> Input: None
execute unless data storage sageutils Recollection run data modify storage sageutils Recollection set value {}
scoreboard objectives add SUGlobals dummy "Utility Variables"