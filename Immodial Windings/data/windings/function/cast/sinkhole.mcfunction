## >> From: windings:cast/call
## >> At: Player casting a spell
## >> As: Player casting a spell
## >> Does: Create a pit
## >> Input: None
execute at @s if block ~ ~-1 ~ #windings:sinkhole_breakable run setblock ~ ~-1 ~ air destroy
execute at @s if block ~1 ~-1 ~ #windings:sinkhole_breakable run setblock ~1 ~-1 ~ air destroy
execute at @s if block ~-1 ~-1 ~ #windings:sinkhole_breakable run setblock ~-1 ~-1 ~ air destroy
execute at @s if block ~ ~-1 ~1 #windings:sinkhole_breakable run setblock ~ ~-1 ~1 air destroy
execute at @s if block ~ ~-1 ~-1 #windings:sinkhole_breakable run setblock ~ ~-1 ~-1 air destroy
execute at @s if block ~1 ~-1 ~1 #windings:sinkhole_breakable run setblock ~1 ~-1 ~1 air destroy
execute at @s if block ~-1 ~-1 ~1 #windings:sinkhole_breakable run setblock ~-1 ~-1 ~1 air destroy
execute at @s if block ~-1 ~-1 ~-1 #windings:sinkhole_breakable run setblock ~-1 ~-1 ~-1 air destroy
execute at @s if block ~1 ~-1 ~-1 #windings:sinkhole_breakable run setblock ~1 ~-1 ~-1 air destroy
execute at @s if block ~ ~-2 ~ #windings:sinkhole_breakable run setblock ~ ~-2 ~ air destroy
execute at @s if block ~1 ~-2 ~ #windings:sinkhole_breakable run setblock ~1 ~-2 ~ air destroy
execute at @s if block ~-1 ~-2 ~ #windings:sinkhole_breakable run setblock ~-1 ~-2 ~ air destroy
execute at @s if block ~ ~-2 ~1 #windings:sinkhole_breakable run setblock ~ ~-2 ~1 air destroy
execute at @s if block ~ ~-2 ~-1 #windings:sinkhole_breakable run setblock ~ ~-2 ~-1 air destroy
execute at @s if block ~1 ~-2 ~1 #windings:sinkhole_breakable run setblock ~1 ~-2 ~1 air destroy
execute at @s if block ~-1 ~-2 ~1 #windings:sinkhole_breakable run setblock ~-1 ~-2 ~1 air destroy
execute at @s if block ~-1 ~-2 ~-1 #windings:sinkhole_breakable run setblock ~-1 ~-2 ~-1 air destroy
execute at @s if block ~1 ~-2 ~-1 #windings:sinkhole_breakable run setblock ~1 ~-2 ~-1 air destroy
execute at @s if block ~ ~-3 ~ #windings:sinkhole_breakable run setblock ~ ~-3 ~ air destroy
execute at @s if block ~1 ~-3 ~ #windings:sinkhole_breakable run setblock ~1 ~-3 ~ air destroy
execute at @s if block ~-1 ~-3 ~ #windings:sinkhole_breakable run setblock ~-1 ~-3 ~ air destroy
execute at @s if block ~ ~-3 ~1 #windings:sinkhole_breakable run setblock ~ ~-3 ~1 air destroy
execute at @s if block ~ ~-3 ~-1 #windings:sinkhole_breakable run setblock ~ ~-3 ~-1 air destroy
execute at @s if block ~ ~-4 ~ #windings:sinkhole_breakable run setblock ~ ~-4 ~ air destroy