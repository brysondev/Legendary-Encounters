scoreboard players reset @a distance

# Set the initial distance score for all players to 9999
execute as @a run scoreboard players set @s distance 9999

# Check if the player is within set blocks of the armor stand
execute as @a if entity @e[tag=tracked,sort=nearest,limit=1,distance=..10] run scoreboard players operation @s distance = @e[tag=tracked,sort=nearest,limit=1] distance

# Sky island
execute as @a at @s if entity @e[tag=part1,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece1
execute as @a at @s if entity @e[tag=part2,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece2
execute as @a at @s if entity @e[tag=part3,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece3
execute as @a at @s if entity @e[tag=part4,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece4
execute as @a at @s if entity @e[tag=part5,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece5
execute as @a at @s if entity @e[tag=part6,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece6
execute as @a at @s if entity @e[tag=part7,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece7
execute as @a at @s if entity @e[tag=part8,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece8
execute as @a at @s if entity @e[tag=part9,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece9
execute as @a at @s if entity @e[tag=part10,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece10
execute as @a at @s if entity @e[tag=part11,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece11
execute as @a at @s if entity @e[tag=part12,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece12
execute as @a at @s if entity @e[tag=part13,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece13
execute as @a at @s if entity @e[tag=part14,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece14
execute as @a at @s if entity @e[tag=part15,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece15
execute as @a at @s if entity @e[tag=part16,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece16
execute as @a at @s if entity @e[tag=part17,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece17
execute as @a at @s if entity @e[tag=part18,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece18
execute as @a at @s if entity @e[tag=part19,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece19
execute as @a at @s if entity @e[tag=part20,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece20
execute as @a at @s if entity @e[tag=part21,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece21
execute as @a at @s if entity @e[tag=part22,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece22
execute as @a at @s if entity @e[tag=part23,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece23
execute as @a at @s if entity @e[tag=part24,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece24
execute as @a at @s if entity @e[tag=part25,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece25
execute as @a at @s if entity @e[tag=part26,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece26
execute as @a at @s if entity @e[tag=part27,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece27
execute as @a at @s if entity @e[tag=part28,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece28
execute as @a at @s if entity @e[tag=part29,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece29
execute as @a at @s if entity @e[tag=part30,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece30
execute as @a at @s if entity @e[tag=part31,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece31
execute as @a at @s if entity @e[tag=part32,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece32
execute as @a at @s if entity @e[tag=part33,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece33
execute as @a at @s if entity @e[tag=part34,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece34
execute as @a at @s if entity @e[tag=part35,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece35
execute as @a at @s if entity @e[tag=part36,tag=tracked,sort=nearest,limit=1,distance=..150] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/spawn_piece36

#Masterball Quest
execute as @a at @s if entity @e[tag=masterballseeker,tag=tracked,sort=nearest,limit=1,distance=..10] run execute at @e[tag=tracked,limit=1] run function survivallegends:skyisland/master_quest

#Jirachi Encounter
execute as @a at @s if entity @e[tag=jirachiencounter,tag=tracked,sort=nearest,limit=1,distance=..6] run execute at @e[tag=tracked,limit=1] run function survivallegends:armor_stands/jirachi_encounter