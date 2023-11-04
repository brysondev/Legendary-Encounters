scoreboard objectives add stonecount dummy
scoreboard objectives add temp dummy
execute as @p store result score @s stonecount run clear @s minecraft:nether_star 0
execute as @p[scores={stonecount=1}] run playsound minecraft:item.bottle.fill_dragonbreath master @a[distance=..5] ~ ~ ~ 100 0.8
execute as @p[scores={stonecount=1}] run playsound minecraft:block.beacon.power_select master @a[distance=..5] ~ ~ ~ 100 0.8
execute as @p[scores={stonecount=1}] run playsound minecraft:entity.wither.spawn master @a[distance=..5] ~ ~ ~ 1 1.75
execute as @p[scores={stonecount=1}] run clear @s minecraft:nether_star 1
execute at @p[scores={stonecount=1..}] run function survivallegends:spawn_mewtwo
execute as @p[scores={stonecount=1}] run tellraw @a {"text":"You are no god... Prove your disposition in battle.","italic":true,"color":"dark_red"}
scoreboard objectives remove stonecount