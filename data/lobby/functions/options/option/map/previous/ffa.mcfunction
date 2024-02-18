# called during ffa to step the map count by -1
# lobby:options/option/map/previous/ffa | called by lobby:options/option/map/previous/main

execute if score map cm_main matches ..-2 run scoreboard players operation map cm_main = ffaMapCount cm_main
execute if score map cm_main = ffaMapCount cm_main run scoreboard players remove map cm_main 1
data modify storage lobby:map_minis FFA prepend from storage lobby:map_minis FFA[-1]
data remove storage lobby:map_minis FFA[-1]

data modify storage lobby:map_names FFA prepend from storage lobby:map_names FFA[-1]
data remove storage lobby:map_names FFA[-1]

execute store result storage lobby:map_minis Selected.FFA int 1 run scoreboard players get map cm_main
