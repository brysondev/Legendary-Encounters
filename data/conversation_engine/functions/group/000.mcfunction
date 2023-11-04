# run by server

# check wich npc is being talked to.
execute if score CE_mannager healervillager matches 1 as @p[scores={healervillager=1}] run function conversation_engine:messages/healervillager/tick
execute if score CE_mannager oldvillager matches 1 as @p[scores={oldvillager=1}] run function conversation_engine:messages/oldvillager/tick
execute if score CE_mannager shadyvillager matches 1 as @p[scores={shadyvillager=1}] run function conversation_engine:messages/shadyvillager/tick
