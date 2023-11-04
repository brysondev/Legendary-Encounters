execute store result score $shiny temp if predicate survivallegends:shinychance
tag @p remove hasnotbeatenrayquaza
execute if score $shiny temp matches 0 run pokespawn rayquaza level=100
execute unless score $shiny temp matches 0 run pokespawn rayquaza shiny=yes level=100