# called by players who just log in again.

# reset the CE_leave_game scoreboard 
scoreboard players set @s CE_leave_game 0

# reset the scoreboards
    # groups
scoreboard players set @s CE_group_00 0

    # scoreboard for villagers
scoreboard players set @s healervillager 0
scoreboard players set @s oldvillager 0
scoreboard players set @s shadyvillager 0


say welcome back!