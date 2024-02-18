# called when they have a trigger of 3 to toggle keep teams
# lobby:options/option/3/main | called by lobby:options/option/check
# @s = player with a options trigger of 3

scoreboard players add keepTeams gm_options 1
execute if score keepTeams gm_options matches 2.. run scoreboard players set keepTeams gm_options 0

function lobby:options/sign/3/update
