scoreboard objectives add stonecount dummy
scoreboard objectives add temp dummy
execute as @p store result score @s stonecount run clear @s minecraft:dragon_egg 0
execute as @p[scores={stonecount=1}] run playsound minecraft:item.bottle.fill_dragonbreath master @a[distance=..5] ~ ~ ~ 100 0.8
execute as @p[scores={stonecount=1}] run playsound minecraft:block.beacon.power_select master @a[distance=..5] ~ ~ ~ 100 0.8
execute as @p[scores={stonecount=1}] run playsound minecraft:entity.wither.spawn master @a[distance=..5] ~ ~ ~ 1 1.75
execute as @p[scores={stonecount=1}] run playsound entity.ender_dragon.growl master @a[distance=..5] ~ ~ ~ 100 0.3
execute at @p[scores={stonecount=1..}] run function survivallegends:spawn_rayquaza
execute as @p[scores={stonecount=1}] run tellraw @a {"text":"The seal of the stars has been broken! A star has fallen from the heavens!","italic":true,"color":"dark_red"}
scoreboard objectives remove stonecount