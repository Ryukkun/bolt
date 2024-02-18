# called when a player leaves the parkour area
# lobby:parkour/left_area | called by lobby:parkour/main
# @s = player who left

tag @s remove in_parkour
clear @s #lobby:parkour
