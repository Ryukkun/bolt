# called when they have a trigger of 6 to toggle name tags
# lobby:options/option/6/main | called by lobby:options/option/check
# @s = player with a options trigger of 6

scoreboard players add tabScoreboard gm_options 1
execute if score tabScoreboard gm_options matches 2.. run scoreboard players set tabScoreboard gm_options 0

function lobby:options/sign/6/update
