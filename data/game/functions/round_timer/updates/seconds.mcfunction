# called when there is lefft a miniute left on the timer (roundTime<1200)
# game:round_timer/seconds | called by game:round_timer/main

scoreboard players operation display_time_left cm_miscellaneous = maxGameTime gm_options
scoreboard players operation display_time_left cm_miscellaneous -= roundTime gm_main
scoreboard players operation display_time_left cm_miscellaneous /= #second cm_miscellaneous

bossbar set gm:round_time name ["",{"text":"Time Remaining: ","bold":true,"color":"gold"},{"score":{"name":"display_time_left","objective":"cm_miscellaneous"},"color":"#d50801"},{"text":" seconds","color":"gold"}]

execute if score display_time_left cm_miscellaneous matches ..10 run function game:round_timer/alert/-10seconds
