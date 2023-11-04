execute store result score $shiny temp if predicate survivallegends:shinychance

execute if score $shiny temp matches 0 run pokespawn moltres level=55
execute unless score $shiny temp matches 0 run pokespawn moltres shiny=yes level=55