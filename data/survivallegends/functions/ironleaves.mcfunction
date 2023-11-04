scoreboard objectives add stonecount dummy
scoreboard objectives add temp dummy
execute as @p store result score @s stonecount run clear @s cobblemon:dubious_disc 0
execute as @p[scores={stonecount=1}] run playsound minecraft:item.bottle.fill_dragonbreath master @a[distance=..5] ~ ~ ~ 100 0.8
execute as @p[scores={stonecount=1}] run playsound minecraft:block.beacon.power_select master @a[distance=..5] ~ ~ ~ 100 0.8
execute as @p[scores={stonecount=1}] run playsound minecraft:entity.wither.spawn master @a[distance=..5] ~ ~ ~ 1 1.75
execute as @p[scores={stonecount=4..}] run summon minecraft:lightning_bolt ^ ^ ^4
execute as @p[scores={stonecount=1}] run clear @s cobblemon:dubious_disc 1
execute at @p[scores={stonecount=1..}] run function survivallegends:spawn_ironleaves
execute as @p[scores={stonecount=1}] run tellraw @a {"text":"Your nature fascinates me, I do not understand it.","italic":true,"color":"dark_red"}
execute as @p[scores={stonecount=1}] run tellraw @a {"text":"Ever since I was alerted to your presence, I have been processing your battles. Even now, I monitor your actions.","italic":true,"color":"dark_red"}
execute as @p[scores={stonecount=1}] run tellraw @a {"text":"Nothing should escape the bounds of my calculations. ","italic":true,"color":"dark_red"}
scoreboard objectives remove stonecount