execute if entity @s[advancements={revenant:judgement_blade/use_blade=false}] run return 0
scoreboard players remove @s judgement_blade_cooldown 1
execute if score @s judgement_blade_cooldown matches 1.. run return run advancement revoke @s only revenant:judgement_blade/blade_cooldown
scoreboard players reset @s judgement_blade_cooldown
advancement revoke @s only revenant:judgement_blade/use_blade
