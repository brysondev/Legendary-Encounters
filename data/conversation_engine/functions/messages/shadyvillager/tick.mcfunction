# always run as the player talking with the villager (scores={shadyvillager = 1})

# this function is run each tick if someone is talking to this NPC

# check if the player is in range of the npc if not end the conversation.
execute at @s unless entity @e[type=villager, distance = ..7, tag=shadyvillager] run function conversation_engine:messages/shadyvillager/end

# check for trigger
execute as @s[scores={CE_trigger = 32}] run function conversation_engine:messages/shadyvillager/shadyrayquaza
execute as @s[scores={CE_trigger = 31}] run function conversation_engine:messages/shadyvillager/shadyxerneas
execute as @s[scores={CE_trigger = 30}] run function conversation_engine:messages/shadyvillager/shadymewtwo
execute as @s[scores={CE_trigger = 29}] run function conversation_engine:messages/shadyvillager/shadyzapdos
execute as @s[scores={CE_trigger = 28}] run function conversation_engine:messages/shadyvillager/shadymoltres
execute as @s[scores={CE_trigger = 27}] run function conversation_engine:messages/shadyvillager/shadyarticuno
execute as @s[scores={CE_trigger = 26}] run function conversation_engine:messages/shadyvillager/shadyvillager4
execute as @s[scores={CE_trigger = 3}] run function conversation_engine:messages/shadyvillager/shadyvillager2
execute as @s[scores={CE_trigger = 2}] run function conversation_engine:messages/shadyvillager/shadyvillager1
execute as @s[scores={CE_trigger = 8}] run function conversation_engine:messages/shadyvillager/buydisc
execute as @s[scores={CE_trigger = 4}] run function conversation_engine:messages/shadyvillager/shadyvillager3
execute as @s[scores={CE_trigger = 7}] run function conversation_engine:messages/shadyvillager/buyexpshare
execute as @s[scores={CE_trigger = 6}] run function conversation_engine:messages/shadyvillager/buywreath
execute as @s[scores={CE_trigger = 5}] run function conversation_engine:messages/shadyvillager/node
execute as @s[scores={CE_trigger = 1}] run function conversation_engine:messages/shadyvillager/shadyvillager

# set trigger back to 0
scoreboard players set @s CE_trigger 0



# set the current node, do not do this here
