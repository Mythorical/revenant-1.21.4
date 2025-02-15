# Inf Tp
tp @e[tag=frozen] @n[type=armor_stand,tag=example]
tp @e[tag=animation] @n[type=armor_stand,tag=animationfreeze]

# Animation timer/release timer
execute as @a[tag=frozen,scores={timer=1..}] run scoreboard players remove @s timer 1
execute as @a[tag=animation,scores={animationtime=1..}] run scoreboard players remove @s animationtime 1


#Timer is up for judgement
execute as @a[scores={timer=0}] run tag @s remove frozen
execute as @a[scores={timer=0}] run kill @e[type=armor_stand,nbt={Tags:["example"]}]


# Kill Animation Grave
execute as @a[tag=animation] at @s[tag=animation] run particle dust{color:[1.0,0.78,0.0],scale:1} ~ ~2 ~ 0 20 0 1 22
execute as @e[tag=particles] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=particles] at @s run particle dust{color:[1.0,0.78,0.0],scale:1} ^ ^ ^1
execute as @a[scores={animationtime=..60}] at @s run particle flash ~ ~1 ~
execute at @a[scores={animationtime=60}] run playsound minecraft:entity.wither.death master @a[distance=..50] ~ ~ ~
#Finish Animation Grave
execute as @a[scores={animationtime=0}] run tag @s remove animation
execute as @a[scores={animationtime=0}] at @s run summon tnt ~ ~1 ~
execute as @a[scores={animationtime=0}] run kill @e[type=armor_stand,nbt={Tags:["animationfreeze"]}]
execute as @a[scores={animationtime=0}] run kill @e[type=marker,tag=particles]
# execute as @a[scores={animationtime=0}] run ban @s
execute at @a[scores={animationtime=0}] run playsound acornlib:silly.clairdelune master @a[distance=..50] ~ ~ ~
execute if entity @a[scores={animationtime=0..10}] run weather rain 3000
# execute as @a[scores={animationtime=0}] run ban @s
execute as @a[scores={animationtime=0}] run gamemode spectator @s
execute as @a[scores={animationtime=0}] run scoreboard players reset @s



# Stuff
execute at @e[tag=move1] rotated as @e[tag=move1] anchored feet run tp @e[tag=move2] ^ ^-1.45 ^
execute as @a[name=YAGGl] if items entity @s weapon.mainhand book[custom_data~{revenant:"signed_contract"}] run effect give @s strength 1 255 true

