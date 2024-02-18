# called to setup the round timer
# game:round_timer/setup | called by game:init

scoreboard players set roundTime gm_main 0

bossbar set gm:round_time players @a
bossbar set gm:round_time visible true

bossbar set gm:round_time color green

execute store result bossbar gm:round_time max run scoreboard players get maxGameTime gm_options
execute store result bossbar gm:round_time value run scoreboard players get maxGameTime gm_options

