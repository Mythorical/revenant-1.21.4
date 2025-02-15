execute if entity @s[advancements={revenant:brimstone/use_brimstone=false}] run return 0
scoreboard players remove @s brimstone_cooldown 1
execute if score @s brimstone_cooldown matches 1.. run return run advancement revoke @s only revenant:brimstone/brimstone_cooldown
scoreboard players reset @s brimstone_cooldown
advancement revoke @s only revenant:brimstone/use_brimstone
