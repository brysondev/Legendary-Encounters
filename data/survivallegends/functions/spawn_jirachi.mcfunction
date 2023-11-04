scoreboard objectives add temp dummy
execute store result score $shiny temp if predicate survivallegends:shinychance

execute if score $shiny temp matches 0 run pokespawnat ~ ~4 ~ jirachi level=55
execute unless score $shiny temp matches 0 run pokespawnat ~ ~4 ~ jirachi shiny=yes level=55