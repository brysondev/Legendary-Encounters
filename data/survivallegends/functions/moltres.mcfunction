scoreboard objectives add stonecount dummy
scoreboard objectives add temp dummy
execute as @p store result score @s stonecount run clear @s cobblemon:sun_stone 0
execute as @p[scores={stonecount=1..3}] run scoreboard objectives remove stonecount
execute as @p[scores={stonecount=4..}] run playsound minecraft:item.bottle.fill_dragonbreath master @a[distance=..5] ~ ~ ~ 100 0.8
execute as @p[scores={stonecount=4..}] run playsound minecraft:block.beacon.power_select master @a[distance=..5] ~ ~ ~ 100 0.8
execute as @p[scores={stonecount=4..}] run playsound minecraft:entity.wither.spawn master @a[distance=..5] ~ ~ ~ 1 1.75
execute as @p[scores={stonecount=4..}] run clear @s cobblemon:sun_stone 4
execute at @p[scores={stonecount=4..}] run function survivallegends:spawn_moltres
execute as @p[scores={stonecount=4..}] run tellraw @a {"text":"The air is getting warmer around you...","italic":true,"color":"dark_red"}
scoreboard objectives remove stonecount