## >> From: wounded:sound/spider_bite (advancement)
## >> At: Player who was bitten by zombie
## >> As: Player who was bitten by zombie
## >> Does: Play zombie bite sound
## >> Input: None
playsound entity.fox.bite hostile @a ~ ~ ~ 1 1.2
playsound entity.spider.hurt hostile @a ~ ~ ~ 1 1.4
advancement revoke @s only wounded:sound/spider_bite