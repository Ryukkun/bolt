scoreboard players reset pointsLoaded cm_miscellaneous
execute if score map cm_main matches 0 run function map:check/teams/mesa
execute if score map cm_main matches 1 run function map:check/teams/ice
execute if score map cm_main matches 2 run function map:check/teams/warehouse
execute if score map cm_main matches 3 run function map:check/teams/caverns
execute if score map cm_main matches 4 run function map:check/teams/space
execute if score map cm_main matches 5 run function map:nation/check

scoreboard players reset loadingTime cm_miscellaneous

execute if score gameMode cm_main matches 0..1 if score pointsLoaded cm_miscellaneous matches 4 run function map:init
execute if score gameMode cm_main matches 3..4 if score pointsLoaded cm_miscellaneous matches 2 run function map:init

#map ids
#0 mesa
#1 ice
#2 warehouse
#3 caverns
#4 space
#5 nation
