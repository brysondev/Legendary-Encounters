execute store result score $shiny temp if predicate survivallegends:shinychancedungeon
tag @p remove hasnotbeatenrayquaza
execute if score $shiny temp matches 0 run pokespawnat ~ ~4 ~ rayquaza level=100
execute unless score $shiny temp matches 0 run pokespawnat ~ ~4 ~ rayquaza shiny=yes level=100