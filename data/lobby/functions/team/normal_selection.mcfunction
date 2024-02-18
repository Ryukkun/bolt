#called when a player is near a team selection point
# called when a player is near a team selection stand
# lobby:team_selection | called from lobby:main
# @s = player who is near a team selection AEC
execute if block ~ 40 ~ red_concrete as @s[team=!3red] run function lobby:team/join/red
execute if block ~ 40 ~ blue_concrete as @s[team=!1blue] run function lobby:team/join/blue
execute if block ~ 40 ~ gray_concrete as @s[tag=!lobby] run function lobby:team/join/lobby
