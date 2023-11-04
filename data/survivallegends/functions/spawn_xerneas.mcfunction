execute store result score $shiny temp if predicate survivallegends:shinychance

execute if score $shiny temp matches 0 run pokespawn xerneas level=70
execute unless score $shiny temp matches 0 run pokespawn xerneas shiny=yes level=70