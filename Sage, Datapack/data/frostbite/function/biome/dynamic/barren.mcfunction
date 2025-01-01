## >> From: frostbite:barren (advancement)
## >> At: Player in a barren biome
## >> As: Player in a barren biome
## >> Does: Divert to Blazing or Frigid
## >> Input: None
execute if predicate frostbite:day run function frostbite:biome/blazing
execute unless predicate frostbite:day run function frostbite:biome/frigid
advancement revoke @s only frostbite:biome/barren