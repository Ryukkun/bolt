# called when they have a trigger of 1 - respawn time
# lobby:options/option/1/main | called by lobby:options/option/check
# @s = player with a options trigger of 1

execute if score respawnTime gm_options matches 200 run scoreboard players set respawnTime gm_options -10
execute if score respawnTime gm_options matches 100 run scoreboard players set respawnTime gm_options 200
execute if score respawnTime gm_options matches 60 run scoreboard players set respawnTime gm_options 100
execute if score respawnTime gm_options matches 3 run scoreboard players set respawnTime gm_options 60

execute if score respawnTime gm_options matches -10 run scoreboard players set respawnTime gm_options 3

function lobby:options/sign/1/update

# 60 - 3 seconds
# 100 - 5 seconds
# 200 - 10 seconds
# 3 - Instaint
