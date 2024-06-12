# called during ffa to step the map count by -1
# lobby:options/option/map/previous/ffa | called by lobby:options/option/map/previous/main

scoreboard players operation map cm_main = ffaMapCount cm_main
scoreboard players remove map cm_main 1