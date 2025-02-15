scoreboard players reset @s judgement_blade

kill @e[type=armor_stand,nbt={Tags:["example"]}]

execute if entity @a[tag=frozen] positioned ~ ~ ~ run playsound minecraft:item.trident.thunder master
execute in skylight:limbo_dim as @a[tag=frozen] run tp 0 90 0
execute in skylight:limbo_dim run playsound minecraft:item.trident.thunder master @a[tag=frozen] 0 90 0

execute if entity @a[tag=frozen] run tellraw @a ["",{"text":"a","obfuscated":true},{"text":" A PLAYER HAS BEEN PUNISHED BY THE GODS ","bold":true,"color":"#ffb31a"},{"text":"a","obfuscated":true}]

effect give @a[tag=frozen] slow_falling infinite 255 true
effect give @a[tag=frozen] resistance infinite 255 true

advancement revoke @s only revenant:judgement_blade/blade_cooldown
execute if entity @a[tag=frozen] run scoreboard players set @s judgement_blade_cooldown 30
tag @a remove frozen
