scoreboard objectives add temp dummy

# Try to spawn a pokemon
execute positioned ~ -1000 ~ store success score dummy temp run pokespawn articuno

# Failed
execute unless score dummy temp matches 1 as @a run function survivallegends:warn_server_bug
scoreboard objectives remove temp