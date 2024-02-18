# called during ffa to step the map count by 1
# lobby:options/option/map/next/ffa | called by lobby:options/option/map/next/main

execute if score map cm_main >= ffaMapCount cm_main run scoreboard players set map cm_main -1
data modify storage lobby:map_minis FFA append from storage lobby:map_minis FFA[0]
data remove storage lobby:map_minis FFA[0]

data modify storage lobby:map_names FFA append from storage lobby:map_names FFA[0]
data remove storage lobby:map_names FFA[0]

execute store result storage lobby:map_minis Selected.FFA int 1 run scoreboard players get map cm_main
