# always run by the NPC

# this function checks wich NPC the player has clicked

execute at @s[tag=healervillager] run function conversation_engine:messages/healervillager/start
execute at @s[tag=oldvillager] run function conversation_engine:messages/oldvillager/start
execute at @s[tag=shadyvillager] run function conversation_engine:messages/shadyvillager/start