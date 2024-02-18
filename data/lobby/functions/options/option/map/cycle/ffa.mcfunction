# called to cycle the ffa selections untill they reach right one
# lobby:options/option/map/cycle/ffa | called by lobby:options/map/cycle/main

data modify storage lobby:map_minis FFA append from storage lobby:map_minis FFA[0]
data remove storage lobby:map_minis FFA[0]

data modify storage lobby:map_names FFA append from storage lobby:map_names FFA[0]
data remove storage lobby:map_names FFA[0]

scoreboard players remove temp_map cm_miscellaneous 1
execute if score temp_map cm_miscellaneous matches 1.. run function lobby:options/option/map/cycle/ffa
