# called when in ctf and cycleing the flag options
# lobby:options/option/2/ctf | called by lobby:options/option/2/main
# @s = player changing the option

scoreboard players add pointsToWin gm_options 1
execute if score pointsToWin gm_options matches 8.. run scoreboard players set pointsToWin gm_options 3

#update sign
function lobby:options/sign/2/ctf
