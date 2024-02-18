# called to cycle the team selections untill they reach right one
# lobby:options/option/map/cycle/team | called by lobby:options/map/cycle/main

data modify storage lobby:map_minis Team append from storage lobby:map_minis Team[0]
data remove storage lobby:map_minis Team[0]

data modify storage lobby:map_names Team append from storage lobby:map_names Team[0]
data remove storage lobby:map_names Team[0]

scoreboard players remove temp_map cm_miscellaneous 1
execute if score temp_map cm_miscellaneous matches 1.. run function lobby:options/option/map/cycle/team
