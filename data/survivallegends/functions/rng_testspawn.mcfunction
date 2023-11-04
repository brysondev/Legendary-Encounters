scoreboard objectives add rng dummy
execute store result score @p rng run loot spawn ~ ~ ~ loot tables:legend_table

execute if score @p rng matches 0 run function survivallegends:dungeonspawns/spawn_rayquazadungeon
execute if score @p rng matches 1 run function survivallegends:dungeonspawns/spawn_zapdosdungeon
execute if score @p rng matches 2 run function survivallegends:dungeonspawns/spawn_moltresdungeon
execute if score @p rng matches 3 run function survivallegends:dungeonspawns/spawn_articunodungeon
execute if score @p rng matches 4 run function survivallegends:dungeonspawns/spawn_xerneasdungeon
execute if score @p rng matches 5 run function survivallegends:dungeonspawns/spawn_mewtwodungeon

scoreboard objectives remove rng