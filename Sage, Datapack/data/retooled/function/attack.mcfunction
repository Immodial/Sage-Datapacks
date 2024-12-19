## >> From: retooled:attack (advancement)
## >> At: Player who just attacked an entity
## >> As: Player who just attacked an entity
## >> Does: Apply possible effects
## >> Input: None
# Grab enemies with sickle
execute as @e[nbt={HurtTime:10s}] if function retooled:check/sickle at @s run function retooled:functionality/sickle/pull
# Poison enemies
execute as @e[nbt={HurtTime:10s}] if function retooled:check/venom at @s run effect give @s poison 4 2
# Revoke
advancement revoke @s only retooled:attack