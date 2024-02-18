#called to cycle the gamemode option
# lobby:options/option/gamemode/main | called by lobby:options/option/check

scoreboard players add gameMode cm_main 1
execute if score gameMode cm_main matches 5.. run scoreboard players set gameMode cm_main 0

function lobby:options/option/gamemode/storage/save
function lobby:options/option/gamemode/storage/swap
function lobby:options/option/gamemode/storage/load

execute if score gameMode cm_main matches 2 store result score map cm_main run data get storage lobby:map_minis Selected.FFA 1
execute if score gameMode cm_main matches 3 store result score map cm_main run data get storage lobby:map_minis Selected.Team 1
function lobby:options/option/map/update_structure

function lobby:load/signs/main
function lobby:options/sign/update_all

function lobby:update_sidebar
