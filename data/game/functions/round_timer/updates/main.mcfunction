# called to update the boxx bar once a second
# game:round_timer/updates/main | called by game:round_timer/main

scoreboard players operation time_left cm_miscellaneous = maxGameTime gm_options
scoreboard players operation time_left cm_miscellaneous -= roundTime gm_main

execute store result bossbar gm:round_time value run scoreboard players get time_left cm_miscellaneous

execute if score time_left cm_miscellaneous matches 1201.. run function game:round_timer/updates/minutes
execute if score time_left cm_miscellaneous matches 1200 run function game:round_timer/alert/1minute
execute if score time_left cm_miscellaneous matches ..1199 run function game:round_timer/updates/seconds
