# always run as the player talking with the villager (scores={healervillager = 1})

# this function is run each tick if someone is talking to this NPC

# check if the player is in range of the npc if not end the conversation.
execute at @s unless entity @e[type=villager, distance = ..7, tag=healervillager] run function conversation_engine:messages/healervillager/end

# check for trigger
execute as @s[scores={CE_trigger = 25}] run function conversation_engine:messages/healervillager/healer4
execute as @s[scores={CE_trigger = 24}] run function conversation_engine:messages/healervillager/healer3
execute as @s[scores={CE_trigger = 23}] run function conversation_engine:messages/healervillager/healer2
execute as @s[scores={CE_trigger = 20}] run function conversation_engine:messages/healervillager/healer1
execute as @s[scores={CE_trigger = 22}] run function conversation_engine:messages/healervillager/buyuball
execute as @s[scores={CE_trigger = 21}] run function conversation_engine:messages/healervillager/buygball
execute as @s[scores={CE_trigger = 19}] run function conversation_engine:messages/healervillager/buypokeball
execute as @s[scores={CE_trigger = 18}] run function conversation_engine:messages/healervillager/heal
execute as @s[scores={CE_trigger = 17}] run function conversation_engine:messages/healervillager/healervillager

# set trigger back to 0
scoreboard players set @s CE_trigger 0



# set the current node, do not do this here
