scoreboard objectives add armorStandActive dummy

scoreboard players set @e[type=armor_stand,tag=base1,sort=nearest,limit=1] armorStandActive 0
scoreboard players set @e[type=armor_stand,tag=base2,sort=nearest,limit=1] armorStandActive 0
scoreboard players set @e[type=armor_stand,tag=base3,sort=nearest,limit=1] armorStandActive 0
scoreboard players set @e[type=armor_stand,tag=base4,sort=nearest,limit=1] armorStandActive 0

execute as @e[type=armor_stand,tag=base1,sort=nearest,limit=1] at @s if block ~ ~ ~ minecraft:chiseled_nether_bricks run scoreboard players set @s armorStandActive 1
execute as @e[type=armor_stand,tag=base2,sort=nearest,limit=1] at @s if block ~ ~ ~ minecraft:chiseled_nether_bricks run scoreboard players set @s armorStandActive 1
execute as @e[type=armor_stand,tag=base3,sort=nearest,limit=1] at @s if block ~ ~ ~ minecraft:chiseled_nether_bricks run scoreboard players set @s armorStandActive 1
execute as @e[type=armor_stand,tag=base4,sort=nearest,limit=1] at @s if block ~ ~ ~ minecraft:chiseled_nether_bricks run scoreboard players set @s armorStandActive 1

execute if entity @e[type=armor_stand,tag=base1,scores={armorStandActive=1},sort=nearest,limit=1] unless entity @e[type=armor_stand,tag=base2,scores={armorStandActive=0},sort=nearest,limit=1] unless entity @e[type=armor_stand,tag=base3,scores={armorStandActive=0},sort=nearest,limit=1] unless entity @e[type=armor_stand,tag=base4,scores={armorStandActive=0},sort=nearest,limit=1] run function survivallegends:puzzles/skypuzzle_complete

scoreboard players reset @e[type=armor_stand] armorStandActive