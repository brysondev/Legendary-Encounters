# run as the player

# message id: 20

# reset the sucsess scoreboard
scoreboard players set @s CE_suc 0
scoreboard players set @s CE_resend 0

# check if the player came from a valid previous node (to prevent manual use of /trigger)
execute if score @s CE_current_node matches 17 run scoreboard players set @s CE_suc 1

# special case in case the previous node is itself in that case CE_resend of @s is set to 1 (use this to prevent commands that for example give items are executed twice)
execute store success score @s CE_resend if score @s CE_current_node matches 20 run scoreboard players set @s CE_suc 1

    # give the choices
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n","color":"white"}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"This island is known to few, not many pass through here. I would imagine it is difficult to scale to such heights","color":"white"}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"without the use of flight or some otherworldly power.","color":"white"}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"...","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 23"}}]


    # update the last run node
    execute if score @s CE_suc matches 1 run scoreboard players operation @s CE_current_node = @s CE_trigger
