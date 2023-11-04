# Part 2
execute as @a at @s if entity @e[tag=part6,sort=nearest,limit=1] run execute at @e[tag=part6,limit=1] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldgeneration:skyisland/middlelayer/part6",rotation:"90"} replace
execute as @a at @s if entity @e[tag=part6,sort=nearest,limit=1] run execute at @e[tag=part6,limit=1] run setblock ~ ~48 ~ minecraft:structure_block{mode:"LOAD",name:"worldgeneration:skyisland/toplayer/part6",rotation:"90"} replace
execute as @a at @s if entity @e[tag=part6,sort=nearest,limit=1] run execute at @e[tag=part6,limit=1] run setblock ~ ~1 ~ minecraft:redstone_block replace
execute as @a at @s if entity @e[tag=part6,sort=nearest,limit=1] run execute at @e[tag=part6,limit=1] run setblock ~ ~49 ~ minecraft:redstone_block replace
execute as @a at @s if entity @e[tag=part6,sort=nearest,limit=1] run execute as @e[tag=part6] run kill @s