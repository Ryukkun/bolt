# called during a team mode to step the map count by 1
# lobby:options/option/map/next/team | called by lobby:options/option/map/next/main

execute if score map cm_main >= teamMapCount cm_main run scoreboard players set map cm_main -1
data modify storage lobby:map_minis Team append from storage lobby:map_minis Team[0]
data remove storage lobby:map_minis Team[0]

data modify storage lobby:map_names Team append from storage lobby:map_names Team[0]
data remove storage lobby:map_names Team[0]

execute store result storage lobby:map_minis Selected.Team int 1 run scoreboard players get map cm_main
