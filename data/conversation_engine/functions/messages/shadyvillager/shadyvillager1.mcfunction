# run as the player

# message id: 2

# reset the sucsess scoreboard
scoreboard players set @s CE_suc 0
scoreboard players set @s CE_resend 0

# check if the player came from a valid previous node (to prevent manual use of /trigger)
execute if score @s CE_current_node matches 5 run scoreboard players set @s CE_suc 1

# special case in case the previous node is itself in that case CE_resend of @s is set to 1 (use this to prevent commands that for example give items are executed twice)
execute store success score @s CE_resend if score @s CE_current_node matches 2 run scoreboard players set @s CE_suc 1

    # give the choices
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n","color":"white"}]
    # if the player has the tag hasinteracted
    execute if score @s CE_suc matches 1 if score @s CE_resend matches 0 run scoreboard players set @s CE_if_00 0
    execute if score @s CE_suc matches 1 if score @s CE_resend matches 0 if entity @s[tag=hasinteracted] run scoreboard players set @s CE_if_00 1
    execute if score @s CE_suc matches 1 if score @s CE_if_00 matches 1 run tellraw @s [{"text":"...Come back later","color":"white"}]
    execute if score @s CE_suc matches 1 if score @s CE_if_00 matches 1 run function conversation_engine:messages/shadyvillager/end
    # else 
    execute if score @s CE_suc matches 1 if score @s CE_if_00 matches 0 run tellraw @s [{"text":"I've heard rumors about a strange looking Cobblemon in the area... I have also another secret if you wish to hear...","color":"white"}]
    execute if score @s CE_suc matches 1 if score @s CE_if_00 matches 0 run tellraw @s [{"text":"What?","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 3"}}]
    execute if score @s CE_suc matches 1 if score @s CE_if_00 matches 0 run tellraw @s [{"text":"Secret?","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 26"}}]
    execute if score @s CE_suc matches 1 if score @s CE_if_00 matches 0 run tellraw @s [{"text":"Not interested...","color":"#A8DFFF","clickEvent":{"action":"run_command","value":"/trigger CE_trigger set 4"}}]


    # update the last run node
    execute if score @s CE_suc matches 1 run scoreboard players operation @s CE_current_node = @s CE_trigger
