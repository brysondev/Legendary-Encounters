execute store result score $shiny temp if predicate survivallegends:shinychance

execute if score $shiny temp matches 0 run pokespawn articuno level=55
execute unless score $shiny temp matches 0 run pokespawn articuno shiny=yes level=55