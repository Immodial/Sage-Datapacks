## >> From: study:tick (advancement)
## >> At: Any Player
## >> As: Any Player
## >> Does: Remove using tag
## >> Input: None
# Update status of using item
tag @s remove SDYUsed
tag @s[tag=SDYUsing] add SDYUsed
tag @s remove SDYUsing
# Re-ready events
advancement revoke @s only study:use
advancement revoke @s only study:tick