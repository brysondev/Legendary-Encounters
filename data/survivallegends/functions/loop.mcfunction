scoreboard players remove @e[scores={shadydebuff=1..}] shadydebuff 1

execute as @e[scores={shadydebuff=1}] run tag @p remove hasinteracted
execute as @e[scores={shadydebuff=1}] run tellraw @p "The Shady Villager is ready to speak to you again..."