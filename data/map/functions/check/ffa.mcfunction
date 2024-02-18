execute if score map cm_main matches 0 run function map:check/ffa/fuji
execute if score map cm_main matches 1 run function map:check/ffa/tomb
execute if score map cm_main matches 2 run function map:check/ffa/neon
execute if score map cm_main matches 3 run function map:neather/check

scoreboard players reset loadingTime cm_miscellaneous

execute if score pointsLoaded cm_miscellaneous matches 100 run function map:init
scoreboard players reset pointsLoaded cm_miscellaneous

#map ids
#0 fuji
#1 tomb
#2 neon
#3 neather
#4 
#5
