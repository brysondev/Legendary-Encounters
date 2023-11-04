function survivallegends:skyisland/spawn_island
execute as @p at @s run summon minecraft:lightning_bolt ~ ~11 ~
tellraw @p [{"text":"..!","color":"red"}]

execute at @e[type=armor_stand,tag=base1,sort=nearest,limit=1] run setblock ~ ~ ~ minecraft:bedrock replace
execute at @e[type=armor_stand,tag=base1,sort=nearest,limit=1] run kill @e[type=armor_stand,tag=base1,sort=nearest,limit=1]

execute at @e[type=armor_stand,tag=base2,sort=nearest,limit=1] run setblock ~ ~ ~ minecraft:bedrock replace
execute at @e[type=armor_stand,tag=base2,sort=nearest,limit=1] run kill @e[type=armor_stand,tag=base2,sort=nearest,limit=1]

execute at @e[type=armor_stand,tag=base3,sort=nearest,limit=1] run setblock ~ ~ ~ minecraft:bedrock replace
execute at @e[type=armor_stand,tag=base3,sort=nearest,limit=1] run kill @e[type=armor_stand,tag=base3,sort=nearest,limit=1]

execute at @e[type=armor_stand,tag=base4,sort=nearest,limit=1] run setblock ~ ~ ~ minecraft:bedrock replace
execute at @e[type=armor_stand,tag=base4,sort=nearest,limit=1] run kill @e[type=armor_stand,tag=base4,sort=nearest,limit=1]