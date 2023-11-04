execute store result score $shiny temp if predicate survivallegends:shinychancedungeon

execute if score $shiny temp matches 0 run pokespawnat ~ ~4 ~ zapdos level=100
execute unless score $shiny temp matches 0 run pokespawnat ~ ~4 ~ zapdos shiny=yes level=100