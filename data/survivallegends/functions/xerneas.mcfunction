scoreboard objectives add stonecount dummy
scoreboard objectives add temp dummy
execute as @p store result score @s stonecount run clear @s cobblemon:galarica_wreath 0
execute as @p[scores={stonecount=1}] run playsound minecraft:item.bottle.fill_dragonbreath master @a[distance=..5] ~ ~ ~ 100 0.8
execute as @p[scores={stonecount=1}] run playsound minecraft:block.beacon.power_select master @a[distance=..5] ~ ~ ~ 100 0.8
execute as @p[scores={stonecount=1}] run clear @s cobblemon:galarica_wreath 1
execute at @p[scores={stonecount=1..}] run function survivallegends:spawn_xerneas
execute as @p[scores={stonecount=1}] run tellraw @a {"text":"The Horned God has recognised your devotion to purity!","italic":true,"color":"dark_red"}
scoreboard objectives remove stonecount