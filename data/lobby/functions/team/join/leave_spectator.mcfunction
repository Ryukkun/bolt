# called when a player is leaving spectator
# lobby:team/join/leave_spectator | called from lobby:team/spectator_selection
# @s = player who leaving spectator
execute as @s[tag=old_red] run function lobby:team/join/red
execute as @s[tag=old_blue] run function lobby:team/join/blue
execute as @s[tag=old_lobby] run function lobby:team/join/lobby