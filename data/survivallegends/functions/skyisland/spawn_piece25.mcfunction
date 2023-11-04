# Part 2
execute as @a at @s if entity @e[tag=part25,sort=nearest,limit=1] run execute at @e[tag=part25,limit=1] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldgeneration:skyisland/middlelayer/part25",rotation:"90"} replace
execute as @a at @s if entity @e[tag=part25,sort=nearest,limit=1] run execute at @e[tag=part25,limit=1] run setblock ~ ~48 ~ minecraft:structure_block{mode:"LOAD",name:"worldgeneration:skyisland/toplayer/part25",rotation:"90"} replace
execute as @a at @s if entity @e[tag=part25,sort=nearest,limit=1] run execute at @e[tag=part25,limit=1] run setblock ~ ~1 ~ minecraft:redstone_block replace
execute as @a at @s if entity @e[tag=part25,sort=nearest,limit=1] run execute at @e[tag=part25,limit=1] run setblock ~ ~49 ~ minecraft:redstone_block replace
execute as @a at @s if entity @e[tag=part25,sort=nearest,limit=1] run execute as @e[tag=part25] run kill @s