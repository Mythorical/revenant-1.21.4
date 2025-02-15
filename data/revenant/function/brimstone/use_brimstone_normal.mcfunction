scoreboard players reset @s brimstone

summon minecraft:fireball ^ ^1 ^2 {ExplosionPower:5b,Item:{id:"minecraft:poisonous_potato",components:{item_model:"revenant:brimstone"}},Fire:-1s}

advancement revoke @s only revenant:brimstone/brimstone_cooldown
scoreboard players set @s brimstone_cooldown 30
