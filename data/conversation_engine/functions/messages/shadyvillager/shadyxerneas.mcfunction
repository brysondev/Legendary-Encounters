# run as the player

# message id: 31

# reset the sucsess scoreboard
scoreboard players set @s CE_suc 0
scoreboard players set @s CE_resend 0

# check if the player came from a valid previous node (to prevent manual use of /trigger)
execute if score @s CE_current_node matches 26 run scoreboard players set @s CE_suc 1

# special case in case the previous node is itself in that case CE_resend of @s is set to 1 (use this to prevent commands that for example give items are executed twice)
execute store success score @s CE_resend if score @s CE_current_node matches 31 run scoreboard players set @s CE_suc 1

    # give the choices
    execute if score @s CE_suc matches 1 run tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n","color":"white"}]
    scoreboard players set @s CE_buy_count 0
    execute if score @s CE_suc matches 1 if score @s CE_resend matches 0 store result score @s CE_buy_count run clear @s minecraft:totem_of_undying 0
    execute if score @s CE_buy_count matches 1.. run clear @s minecraft:totem_of_undying 1
    execute if score @s CE_buy_count matches 1.. run advancement revoke @s only survivallegends:xerneas
    execute if score @s CE_buy_count matches 1.. run tellraw @s [{"text":"your mark has been removed...","color":"dark_red"}]
    execute if score @s CE_buy_count matches 1.. run execute as @s at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 1
    execute if score @s CE_buy_count matches 1.. run scoreboard players add @s shadydebuff 24000
    execute if score @s CE_suc matches 1 if score @s CE_if_00 matches 0 run tag @s add hasinteracted
    execute if score @s CE_suc matches 1 run function conversation_engine:messages/shadyvillager/end


    # update the last run node
    execute if score @s CE_suc matches 1 run scoreboard players operation @s CE_current_node = @s CE_trigger
