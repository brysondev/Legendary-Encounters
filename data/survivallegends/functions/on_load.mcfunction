scoreboard objectives add shadydebuff dummy
scoreboard objectives add legenddebuff dummy
scoreboard objectives add distance dummy
scoreboard objectives add activation dummy

execute as @a run scoreboard players set @s distance 0

function survivallegends:loop
function survivallegends:check_progression
function survivallegends:detect_server_bug
tellraw @a "Legendary Encounters loaded"