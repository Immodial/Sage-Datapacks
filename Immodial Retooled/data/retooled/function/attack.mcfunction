## >> From: retooled:attack (advancement)
## >> At: Player who just attacked an entity
## >> As: Player who just attacked an entity
## >> Does: Apply possible effects
## >> Input: None
# Grab enemies with sicle
execute as @e[nbt={HurtTime:10s}] if function retooled:check/sickle at @s run function retooled:hit/sickle
# Revoke
advancement revoke @s only retooled:attack