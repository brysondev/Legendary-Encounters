execute if entity @p[advancements={survivallegends:rayquaza=true}] run function survivallegends:ironleaves
execute if entity @p[advancements={survivallegends:rayquaza=false}] run advancement revoke @s only survivallegends:ironleaves 
execute if entity @p[advancements={survivallegends:rayquaza=false}] run tellraw @a {"text":"It doesnt seem to be doing anything...","italic":true,"color":"dark_red"}
