# run as the player

# message id: 11

# reset the sucsess scoreboard
scoreboard players set @s CE_suc 0
scoreboard players set @s CE_resend 0

# check if the player came from a valid previous node (to prevent manual use of /trigger)
execute if score @s CE_current_node matches 10 run scoreboard players set @s CE_suc 1

# special case in case the previous node is itself in that case CE_resend of @s is set to 1 (use this to prevent commands that for example give items are executed twice)
execute store success score @s CE_resend if score @s CE_current_node matches 11 run scoreboard players set @s CE_suc 1

    # give the choices
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n","color":"white"}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"This island was traversed way before our arrival.","color":"white"}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"The few who dared to quest the underground ruins either returned with a stolen treasure or not at all-","color":"white"}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"..?","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 12"}}]


    # update the last run node
    execute if score @s CE_suc matches 1 run scoreboard players operation @s CE_current_node = @s CE_trigger
