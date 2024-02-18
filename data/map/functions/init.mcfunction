scoreboard players set gameState cm_main 2
scoreboard players set loadingTime cm_miscellaneous 0

#Initialize map
kill @e[tag=map]

#run map setup (non ffa)
execute if score map cm_main matches 0 unless score gameMode cm_main matches 2 run function map:mesa/setup
execute if score map cm_main matches 1 unless score gameMode cm_main matches 2 run function map:ice/setup
execute if score map cm_main matches 2 unless score gameMode cm_main matches 2 run function map:warehouse/setup
execute if score map cm_main matches 3 unless score gameMode cm_main matches 2 run function map:caverns/setup
execute if score map cm_main matches 4 unless score gameMode cm_main matches 2 run function map:space/setup
execute if score map cm_main matches 5 unless score gameMode cm_main matches 2 run function map:nation/setup

#run map set (ffa)
execute if score map cm_main matches 0 if score gameMode cm_main matches 2 run function map:fuji/setup
execute if score map cm_main matches 1 if score gameMode cm_main matches 2 run function map:tomb/setup
execute if score map cm_main matches 2 if score gameMode cm_main matches 2 run function map:neon/setup

function game:init

#map ids
#0 mesa, fuji
#1 ice, tomb
#2 warehouse, neon
#3 cavernns, Nether
#4 space
#5 Nation
#6 

