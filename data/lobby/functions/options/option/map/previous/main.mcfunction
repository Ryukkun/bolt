#called to cycle the map by -1
# lobby:options/option/map/previous/main | called by lobby:options/option/check

scoreboard players remove map cm_main 1
execute if score gameMode cm_main matches 2 run function lobby:options/option/map/previous/ffa
execute unless score gameMode cm_main matches 2 run function lobby:options/option/map/previous/team

execute if score map cm_main matches -1 run function lobby:options/option/map/reset_map_cycle


function lobby:options/sign/map/update
schedule function lobby:options/option/map/update_structure 3t

function lobby:update_sidebar

#map ids
#0 mesa, fuji
#1 ice, tomb
#2 warehouse, neon
#3 cavernns, Nether
#4 space
#5 Nation
#6 
