execute store result score $shiny temp if predicate survivallegends:shinychance

execute if score $shiny temp matches 0 run pokespawn mewtwo level=70
execute unless score $shiny temp matches 0 run pokespawn mewtwo shiny=yes level=70