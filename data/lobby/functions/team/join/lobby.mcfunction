# ran to join lobby team
# lobby:team/join/lobby | called by lobby:team/normal_selection
# @s = player to join lobby
function lobby:team/lobby_teams
execute if block ~ 40 ~ gray_concrete run tellraw @s ["",{"text":"- ","bold":true,"color":"red"},{"text":"Left team","bold":true,"color":"gold"}]
tag @s add lobby
scoreboard players set @s gm_team 0
tag @s remove old_lobby
