# run as the player

# message id: 24

# reset the sucsess scoreboard
scoreboard players set @s CE_suc 0
scoreboard players set @s CE_resend 0

# check if the player came from a valid previous node (to prevent manual use of /trigger)
execute if score @s CE_current_node matches 23 run scoreboard players set @s CE_suc 1

# special case in case the previous node is itself in that case CE_resend of @s is set to 1 (use this to prevent commands that for example give items are executed twice)
execute store success score @s CE_resend if score @s CE_current_node matches 24 run scoreboard players set @s CE_suc 1

    # give the choices
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n","color":"white"}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"Yet- In all the villages time we ever only saw a few hundred brave the journey ","color":"white"}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"from the surface. There has never been a recorded case of adventurers ","color":"white"}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"returning back to the surface after making it up here..","color":"white"}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"...","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 25"}}]


    # update the last run node
    execute if score @s CE_suc matches 1 run scoreboard players operation @s CE_current_node = @s CE_trigger
