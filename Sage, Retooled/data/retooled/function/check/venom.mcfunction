## >> From: retooled:tick
## >> At: Entity being attacked
## >> As: Entity being attacked
## >> Does: Detect whether the entity was hit by a venom ring
## >> Input: None
execute on attacker if items entity @s weapon.mainhand *[custom_data~{RTVenomRing:true}] run return 1