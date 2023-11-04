execute store result score $shiny temp if predicate survivallegends:shinychance

execute if score $shiny temp matches 0 run pokespawnat ~ ~4 ~ rayquaza level=85
execute unless score $shiny temp matches 0 run pokespawnat ~ ~4 ~ rayquaza shiny=yes level=85

tellraw @a {"text":"Rayquaza has been summoned!","italic":true,"color":"dark_red"}