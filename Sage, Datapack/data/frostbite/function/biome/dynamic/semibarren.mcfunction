## >> From: frostbite:semibarren (advancement)
## >> At: Player in a semi-barren biome
## >> As: Player in a semi-barren biome
## >> Does: Divert to Tropical or Brisk
## >> Input: None
execute if predicate frostbite:day run function frostbite:biome/tropical
execute unless predicate frostbite:day run function frostbite:biome/brisk
advancement revoke @s only frostbite:biome/semibarren