## >> From: frostbite:heated (advancement)
## >> At: Player in a heated biome
## >> As: Player in a heated biome
## >> Does: Divert to Blazing or Brisk
## >> Input: None
execute if predicate frostbite:day run function frostbite:biome/blazing
execute unless predicate frostbite:day run function frostbite:biome/brisk
advancement revoke @s only frostbite:biome/heated