execute if entity @s[advancements={revenant:anchor/use_anchor=false}] run return 0
scoreboard players remove @s anchor_cooldown 1
execute if score @s anchor_cooldown matches 1.. run return run advancement revoke @s only revenant:anchor/anchor_cooldown
scoreboard players reset @s anchor_cooldown
advancement revoke @s only revenant:anchor/use_anchor
