# run as the player

# message id: 17

# reset the sucsess scoreboard
scoreboard players set @s CE_suc 0
scoreboard players set @s CE_resend 0

# check if the player came from a valid previous node (to prevent manual use of /trigger)
execute if score @s CE_current_node matches 0 run scoreboard players set @s CE_suc 1

# special case in case the previous node is itself in that case CE_resend of @s is set to 1 (use this to prevent commands that for example give items are executed twice)
execute store success score @s CE_resend if score @s CE_current_node matches 17 run scoreboard players set @s CE_suc 1

    # give the choices
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n","color":"white"}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"Welcome! Anything I can get for you?","color":"white"}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"Heal current party","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 18"}}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"Buy 5 Poke-Balls - 10 iron nuggets","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 19"}}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"Buy 5 Great Balls - 25 iron nuggets","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 21"}}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"Buy 5 Ultra Balls - 10 gold nuggets","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 22"}}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"What is this place?","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 20"}}]


    # update the last run node
    execute if score @s CE_suc matches 1 run scoreboard players operation @s CE_current_node = @s CE_trigger
