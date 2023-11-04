# always run as the player talking with the villager (scores={old_villager = 1})

# this function is run each tick if someone is talking to this NPC

# check if the player is in range of the npc if not end the conversation.
execute at @s unless entity @e[type=villager, distance = ..7, tag=old_villager] run function conversation_engine:messages/old_villager/end

# check for trigger
execute as @s[scores={CE_trigger = 14}] run function conversation_engine:messages/old_villager/oldend
execute as @s[scores={CE_trigger = 13}] run function conversation_engine:messages/old_villager/oldquest1
execute as @s[scores={CE_trigger = 12}] run function conversation_engine:messages/old_villager/oldvil3
execute as @s[scores={CE_trigger = 11}] run function conversation_engine:messages/old_villager/oldvil2
execute as @s[scores={CE_trigger = 16}] run function conversation_engine:messages/old_villager/oldquest3
execute as @s[scores={CE_trigger = 10}] run function conversation_engine:messages/old_villager/oldvil1
execute as @s[scores={CE_trigger = 15}] run function conversation_engine:messages/old_villager/oldquest2
execute as @s[scores={CE_trigger = 9}] run function conversation_engine:messages/old_villager/old_villager

# set trigger back to 0
scoreboard players set @s CE_trigger 0



# set the current node, do not do this here
