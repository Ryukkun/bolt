# called during a team mode to step the map count by -1
# lobby:options/option/map/next/team | called by lobby:options/option/map/next/main

scoreboard players operation map cm_main = teamMapCount cm_main
scoreboard players remove map cm_main 1

execute store result storage lobby:map_minis Selected.Team int 1 run scoreboard players get map cm_main