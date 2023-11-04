execute as @a at @s run setblock ~-6 ~-1 ~ structure_block{mode:"LOAD",name:"worldgeneration:spawnerstructure"}
execute as @a at @s run setblock ~-6 ~ ~ minecraft:redstone_block
execute as @a at @s run setblock ~-6 ~-1 ~ air
tellraw @p [{"text":"Legendary Raids Spawner:","color":"green","bold":true,"underlined":true}]
tellraw @p [{"text":"Type /functions survivallegends:spawner/configure_spawner to change spawner settings","color":"red"}]
function survivallegends:spawner/configure_spawner