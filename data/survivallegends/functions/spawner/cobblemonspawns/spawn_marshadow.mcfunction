execute store result score $shiny temp if predicate survivallegends:shinychance

execute if score $shiny temp matches 0 run pokespawnat ~ ~4 ~ marshadow level=85
execute unless score $shiny temp matches 0 run pokespawnat ~ ~4 ~ marshadow shiny=yes level=85

tellraw @a {"text":"Marshadow has been summoned!","italic":true,"color":"dark_red"}