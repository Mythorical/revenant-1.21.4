advancement revoke @s only revenant:grave_bane/ban

tag @s add animation
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Tags:["animationfreeze"]}
tp @e[tag=animation] @n[type=armor_stand,tag=animationfreeze]
scoreboard players set @s animationtime 160
summon minecraft:marker ~ ~ ~ {Tags:["particles"]}