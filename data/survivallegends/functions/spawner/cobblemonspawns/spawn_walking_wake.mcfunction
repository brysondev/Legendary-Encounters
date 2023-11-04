execute store result score $shiny temp if predicate survivallegends:shinychance

execute if score $shiny temp matches 0 run pokespawnat ~ ~4 ~ walkingwake level=85
execute unless score $shiny temp matches 0 run pokespawnat ~ ~4 ~ walkingwake shiny=yes level=85

tellraw @a {"text":"Walking Wake has been summoned!","italic":true,"color":"dark_red"}