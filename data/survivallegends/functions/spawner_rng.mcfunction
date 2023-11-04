scoreboard objectives add rng dummy
execute store result score @p rng run loot spawn ~ ~ ~ loot tables:spawner_table

execute if score @p rng matches 0 run function survivallegends:spawner/cobblemonspawns/spawn_rayquaza
execute if score @p rng matches 1 run function survivallegends:spawner/cobblemonspawns/spawn_mew
execute if score @p rng matches 2 run function survivallegends:spawner/cobblemonspawns/spawn_jirachi
execute if score @p rng matches 3 run function survivallegends:spawner/cobblemonspawns/spawn_victini
execute if score @p rng matches 4 run function survivallegends:spawner/cobblemonspawns/spawn_xerneas
execute if score @p rng matches 5 run function survivallegends:spawner/cobblemonspawns/spawn_mewtwo
execute if score @p rng matches 6 run function survivallegends:spawner/cobblemonspawns/spawn_moltres
execute if score @p rng matches 7 run function survivallegends:spawner/cobblemonspawns/spawn_zapdos
execute if score @p rng matches 8 run function survivallegends:spawner/cobblemonspawns/spawn_articuno
execute if score @p rng matches 9 run function survivallegends:spawner/cobblemonspawns/spawn_meloetta
execute if score @p rng matches 10 run function survivallegends:spawner/cobblemonspawns/spawn_marshadow
execute if score @p rng matches 11 run function survivallegends:spawner/cobblemonspawns/spawn_walking_wake
execute if score @p rng matches 12 run function survivallegends:spawner/cobblemonspawns/spawn_iron_leaves

scoreboard objectives remove rng