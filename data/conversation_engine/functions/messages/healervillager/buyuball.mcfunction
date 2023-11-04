# run as the player

# message id: 22

# reset the sucsess scoreboard
scoreboard players set @s CE_suc 0
scoreboard players set @s CE_resend 0

# check if the player came from a valid previous node (to prevent manual use of /trigger)
execute if score @s CE_current_node matches 17 run scoreboard players set @s CE_suc 1

# special case in case the previous node is itself in that case CE_resend of @s is set to 1 (use this to prevent commands that for example give items are executed twice)
execute store success score @s CE_resend if score @s CE_current_node matches 22 run scoreboard players set @s CE_suc 1

    # give the choices
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n","color":"white"}]
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"1.. 2.. Ta-da!","color":"white"}]
    scoreboard players set @s CE_buy_count 0
    execute if score @s CE_suc matches 1 if score @s CE_resend matches 0 store result score @s CE_buy_count run clear @s minecraft:gold_nugget 0
    execute if score @s CE_buy_count matches 10.. run clear @s minecraft:gold_nugget 10
    execute if score @s CE_buy_count matches 10.. run give @s cobblemon:ultra_ball 5
    execute if score @s CE_suc matches 1 run function conversation_engine:messages/healervillager/end


    # update the last run node
    execute if score @s CE_suc matches 1 run scoreboard players operation @s CE_current_node = @s CE_trigger
