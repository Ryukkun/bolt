# called when the display gets out of sync with the map id
# lobby:options/option/map/cycle/main | called from lobby:options/option/map/random

scoreboard players operation temp_map cm_miscellaneous = map cm_main

function lobby:options/option/map/reset_map_cycle

execute if score gameMode cm_main matches 2 if score temp_map cm_miscellaneous matches 1.. run function lobby:options/option/map/cycle/ffa
execute unless score gameMode cm_main matches 2 if score temp_map cm_miscellaneous matches 1.. run function lobby:options/option/map/cycle/team

execute if score gameMode cm_main matches 2 store result storage lobby:map_minis Selected.FFA int 1 run scoreboard players get map cm_main
execute unless score gameMode cm_main matches 2 store result storage lobby:map_minis Selected.Team int 1 run scoreboard players get map cm_main

scoreboard players reset temp_map cm_miscellaneous
