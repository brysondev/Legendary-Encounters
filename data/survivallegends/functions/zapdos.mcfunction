scoreboard objectives add stonecount dummy
scoreboard objectives add temp dummy
execute as @p store result score @s stonecount run clear @s cobblemon:thunder_stone 0
execute as @p[scores={stonecount=1..3}] run scoreboard objectives remove stonecount
execute as @p[scores={stonecount=4..}] run playsound entity.lightning_bolt.impact master @a[distance=..5] ~ ~ ~ 100 0.3
execute as @p[scores={stonecount=4..}] run clear @s cobblemon:thunder_stone 4
execute at @p[scores={stonecount=4..}] run function survivallegends:spawn_zapdos
execute as @p[scores={stonecount=4..}] run weather thunder
execute as @p[scores={stonecount=4..}] run tellraw @a {"text":"The ground trembles intensely!","italic":true,"color":"dark_red"}
scoreboard objectives remove stonecount