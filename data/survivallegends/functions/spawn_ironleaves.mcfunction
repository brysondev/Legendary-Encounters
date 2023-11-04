execute store result score $shiny temp if predicate survivallegends:shinychance

execute if score $shiny temp matches 0 run pokespawn ironleaves level=100
execute unless score $shiny temp matches 0 run pokespawn ironleaves shiny=yes level=100