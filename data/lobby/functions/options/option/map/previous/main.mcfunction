#called to cycle the map by -1
# lobby:options/option/map/previous/main | called by lobby:options/option/check

scoreboard players remove map cm_main 1
# ffa
execute if score gameMode cm_main matches 2 if score map cm_main matches ..-2 run function lobby:options/option/map/previous/ffa
execute if score gameMode cm_main matches 2 store result storage lobby:map_minis Selected.FFA int 1 run scoreboard players get map cm_main
# team
execute unless score gameMode cm_main matches 2 if score map cm_main matches ..-2 run function lobby:options/option/map/previous/team
execute unless score gameMode cm_main matches 2 store result storage lobby:map_minis Selected.Team int 1 run scoreboard players get map cm_main


function lobby:options/sign/map/update
function lobby:options/option/map/update_structure

function lobby:update_sidebar

#map ids
#0 mesa, fuji
#1 ice, tomb
#2 warehouse, neon
#3 cavernns, Nether
#4 space
#5 Nation
#6 meadow
