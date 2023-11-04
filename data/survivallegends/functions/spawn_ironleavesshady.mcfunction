scoreboard objectives add temp dummy
execute store result score $shiny temp if predicate survivallegends:shinychance

execute if score $shiny temp matches 0 at @p run pokespawnat ~10 ~ ~ ironleaves level=100
execute unless score $shiny temp matches 0 at @p run pokespawnat ~10 ~ ~ ironleaves shiny=yes level=100

execute if score $shiny temp matches 0 at @p run spreadplayers ~40 ~ 3 60 false @e[type=cobblemon:pokemon]
execute unless score $shiny temp matches 0 at @p run spreadplayers ~40 ~ 3 60 false @e[type=cobblemon:pokemon]