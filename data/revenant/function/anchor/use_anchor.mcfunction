scoreboard players reset @s anchor

summon armor_stand ^ ^1 ^ {Pose:{Head:[90f,0f,0f]},Invisible:1b,ArmorItems:[{},{},{},{id:netherite_sword,components:{item_model:"revenant:poiseidens_anchor"}}],Silent:1b,Tags:["tr2","move2"],NoGravity:1b,life:50}
tp @e[type=armor_stand,tag=tr2] ^ ^ ^ ~ ~

summon arrow ^ ^ ^1 {Tags:["tr1","move1"],life:50,Silent:1b,Invisible:1b,item:{count:1,id:"arrow",components:{"minecraft:potion_contents":{potion:"strong_harming"}}}}
data modify storage projectiles:motion Motion set value [0.0,0.0,0.0]

execute store result score @s x run data get entity @s Pos[0] 50
execute as @n[tag=tr1] store result score @s x run data get entity @s Pos[0] 50
scoreboard players operation @n[tag=tr1] x -= @s x
execute store result storage projectiles:motion Motion[0] double 0.1 run scoreboard players get @n[tag=tr1] x

execute store result score @s x run data get entity @s Pos[1] 50
execute as @n[tag=tr1] store result score @s x run data get entity @s Pos[1] 50
scoreboard players operation @n[tag=tr1] x -= @s x
execute store result storage projectiles:motion Motion[1] double 0.1 run scoreboard players get @n[tag=tr1] x

execute store result score @s x run data get entity @s Pos[2] 50
execute as @n[tag=tr1] store result score @s x run data get entity @s Pos[2] 50
scoreboard players operation @n[tag=tr1] x -= @s x
execute store result storage projectiles:motion Motion[2] double 0.1 run scoreboard players get @n[tag=tr1] x

execute anchored eyes run tp @n[tag=tr1] ^ ^ ^1
data modify entity @n[tag=tr1] Motion set from storage projectiles:motion Motion

data remove storage projectiles:motion Motion
scoreboard players reset @s x
tag @e[tag=tr1] remove tr1

advancement revoke @s only revenant:anchor/anchor_cooldown
scoreboard players set @s anchor_cooldown 50
