# Decrease the legenddebuff score for qualifying armor stands
execute as @e[tag=legendarytimer,scores={legenddebuff=1..}] unless score @s legenddebuff matches 0 run scoreboard players remove @s legenddebuff 1

# Increase the legenddebuff score for armor stands with a score of 1
execute as @e[tag=legendarytimer,scores={legenddebuff=1}] run scoreboard players add @s legenddebuff 3600000

# Display warning message
execute as @e[tag=legendarytimer,scores={legenddebuff=24000}] run tellraw @a {"text":"Otherworldly voices linger around you...","italic":true,"color":"dark_red"}

# Create a temporary dummy objective for armor stands with legenddebuff scores 1 to 3
execute as @e[tag=legendarytimer,scores={legenddebuff=1..3}] run scoreboard objectives add temp dummy

# Execute functions and summon lightning bolt for qualifying armor stands
execute as @e[tag=legendarytimer,scores={legenddebuff=1..2}] at @s run function survivallegends:spawner_rng
execute as @e[tag=legendarytimer,scores={legenddebuff=1..2}] at @s run summon minecraft:lightning_bolt ~ ~11 ~