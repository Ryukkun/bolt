# called when in ffa
# lobby:options/option/2/ffa | called by lobby:options/option/2/main
# @s = player changing the option

execute if score pointsToWin gm_options matches 20 run scoreboard players set pointsToWin gm_options -1
execute if score pointsToWin gm_options matches 15 run scoreboard players set pointsToWin gm_options 20
execute if score pointsToWin gm_options matches 10 run scoreboard players set pointsToWin gm_options 15
execute if score pointsToWin gm_options matches -1 run scoreboard players set pointsToWin gm_options 10

#update sign
function lobby:options/sign/2/ffa
