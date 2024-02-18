# called when in cto and cycleing the point health
# lobby:options/option/2/ctp | called by lobby:options/option/2/main
# @s = player changing the option

execute if score pointsToWin gm_options matches 200 run scoreboard players set pointsToWin gm_options -1
execute if score pointsToWin gm_options matches 150 run scoreboard players set pointsToWin gm_options 200
execute if score pointsToWin gm_options matches 100 run scoreboard players set pointsToWin gm_options 150
execute if score pointsToWin gm_options matches 60 run scoreboard players set pointsToWin gm_options 100
execute if score pointsToWin gm_options matches -1 run scoreboard players set pointsToWin gm_options 60

#update sign
function lobby:options/sign/2/ctp
