scoreboard objectives add totemcount dummy
execute as @p store result score @s totemcount run clear @s minecraft:totem_of_undying 0
execute as @p[scores={totemcount=1}] run playsound minecraft:item.bottle.fill_dragonbreath master @a[distance=..5] ~ ~ ~ 100 0.8
execute as @p[scores={totemcount=1}] run playsound minecraft:block.beacon.power_select master @a[distance=..5] ~ ~ ~ 100 0.8
execute as @p[scores={totemcount=1}] run playsound minecraft:entity.wither.spawn master @a[distance=..5] ~ ~ ~ 1 1.75
execute as @p[scores={totemcount=1}] run clear @s minecraft:totem_of_undying 1
execute at @p[scores={totemcount=1}] run tag @p add dungeoninteractes
execute at @p[scores={totemcount=1}] run tellraw @p {"text":"Challenge accepted... You have the mark.", "italic":true,"color":"dark_red"}
scoreboard objectives remove totemcount