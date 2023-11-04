execute store result score $shiny temp if predicate survivallegends:shinychance

execute if score $shiny temp matches 0 run pokespawn zapdos level=55
execute unless score $shiny temp matches 0 run pokespawn zapdos shiny=yes level=55