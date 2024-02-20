# called to get a random map
# lobby:options/option/map/random/main | called by game:pre-init

function lobby:options/option/map/random/loop

scoreboard players operation map cm_main = random_map cm_miscellaneous

scoreboard players reset random_map cm_miscellaneous

#reset map cycle and set to current map
function lobby:options/option/map/cycle/main
