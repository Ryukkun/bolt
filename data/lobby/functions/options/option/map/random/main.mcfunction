# called to get a random map
# lobby:options/option/map/random/main | called by game:pre-init

function lobby:options/option/map/random/loop

scoreboard players operation map cm_main = random_map cm_miscellaneous

scoreboard players reset random_map cm_miscellaneous

#reset map cycle and set to current map
execute if score gameMode cm_main matches 2 store result storage lobby:map_minis Selected.FFA int 1 run scoreboard players get map cm_main
execute unless score gameMode cm_main matches 2 store result storage lobby:map_minis Selected.Team int 1 run scoreboard players get map cm_main