tellraw @a {"text":"Datapack Loaded","color":"light_purple"}

scoreboard objectives add timer dummy

scoreboard objectives add brimstone_cooldown dummy
scoreboard objectives add brimstone minecraft.used:minecraft.poisonous_potato
scoreboard players reset @a brimstone

scoreboard objectives add anchor_cooldown dummy
scoreboard objectives add anchor minecraft.used:minecraft.netherite_sword
scoreboard players reset @a anchor
scoreboard objectives add x dummy

scoreboard objectives add judgement_blade_cooldown dummy
scoreboard objectives add judgement_blade minecraft.used:minecraft.poisonous_potato
scoreboard players reset @a judgement_blade

gamerule doImmediateRespawn true

scoreboard objectives add animationtime dummy
