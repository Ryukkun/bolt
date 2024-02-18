# called to handel the round timer
# game:round_timer/main | called by game:master

scoreboard players add roundTime gm_main 1

scoreboard players operation time_left cm_miscellaneous = maxGameTime gm_options
scoreboard players operation time_left cm_miscellaneous -= roundTime gm_main
scoreboard players operation time_left cm_miscellaneous %= #second cm_miscellaneous

execute if score time_left cm_miscellaneous matches 0 run function game:round_timer/updates/main

execute if score roundTime gm_main > maxGameTime gm_options run function game:round_timer/out_of_time
