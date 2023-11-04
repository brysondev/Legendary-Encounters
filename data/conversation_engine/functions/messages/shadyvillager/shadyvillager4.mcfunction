# run as the player

# message id: 26

# reset the sucsess scoreboard
scoreboard players set @s CE_suc 0
scoreboard players set @s CE_resend 0

# check if the player came from a valid previous node (to prevent manual use of /trigger)
execute if score @s CE_current_node matches 2 run scoreboard players set @s CE_suc 1

# special case in case the previous node is itself in that case CE_resend of @s is set to 1 (use this to prevent commands that for example give items are executed twice)
execute store success score @s CE_resend if score @s CE_current_node matches 26 run scoreboard players set @s CE_suc 1

    # give the choices
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n","color":"white"}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"I've found a way to remove your marks. Give me a totem and I will do so for any you desire...","color":"white"}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":" ","color":"white"}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"Articuno","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 27"}}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"Moltres","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 28"}}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"Zapdos","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 29"}}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"Mewtwo","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 30"}}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"Xerneas","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 31"}}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"Rayquaza - Warning - Will reset progress","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 32"}}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"Not interested...","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 4"}}]


    # update the last run node
    execute if score @s CE_suc matches 1 run scoreboard players operation @s CE_current_node = @s CE_trigger
