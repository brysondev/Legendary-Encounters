scoreboard objectives add rngshady dummy
execute store result score @p rngshady run loot spawn ~ ~ ~ loot tables:shady_table

execute if score @p rngshady matches 0 run function survivallegends:spawn_walkingwake
execute if score @p rngshady matches 1 run function survivallegends:spawn_ironleavesshady

scoreboard objectives remove rngshady