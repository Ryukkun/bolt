# called when a player is near a team selection stand
# lobby:spectator_selection | called from lobby:main
# @s = player who is near a team selection AEC
execute if block ~ 40 ~ white_concrete as @s[team=!9spectator] run function lobby:team/join/spectator
execute if block ~ 39 ~ white_terracotta as @s[team=9spectator] run function lobby:team/join/leave_spectator