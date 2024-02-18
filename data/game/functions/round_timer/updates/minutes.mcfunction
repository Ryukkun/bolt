# called when there is over a miniute left on the timer (roundTime>24000
# game:round_timer/minutes | called by game:round_timer/main

scoreboard players operation display_time_left cm_miscellaneous = maxGameTime gm_options
scoreboard players operation display_time_left cm_miscellaneous -= roundTime gm_main
scoreboard players operation display_time_left cm_miscellaneous /= #minute cm_miscellaneous
scoreboard players add display_time_left cm_miscellaneous 1

bossbar set gm:round_time name ["",{"text":"Time Remaining: ","bold":true,"color":"gold"},{"score":{"name":"display_time_left","objective":"cm_miscellaneous"},"color":"#2bdd13"},{"text":" minutes","color":"gold"}]
