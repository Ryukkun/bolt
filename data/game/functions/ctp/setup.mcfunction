bossbar set gm:red players @a
bossbar set gm:blue players @a
bossbar set gm:red visible true
bossbar set gm:blue visible true

bossbar set gm:red name {"text": "Red Team Health","color":"red","bold": true}
bossbar set gm:blue name {"text": "Blue Team Health","color":"blue","bold": true}

execute store result bossbar gm:blue max run scoreboard players get pointsToWin gm_options
execute store result bossbar gm:red max run scoreboard players get pointsToWin gm_options

execute store result score @e[tag=capturePoint,type=area_effect_cloud] ctp_pointHealth run scoreboard players get pointsToWin gm_options

scoreboard objectives setdisplay sidebar ctp_showHealth

execute at @e[tag=blue,tag=capturePoint] run setblock ~ ~-2 ~ blue_stained_glass
execute at @e[tag=red,tag=capturePoint] run setblock ~ ~-2 ~ red_stained_glass

scoreboard players set @a gstats_ctpCapted 0
scoreboard players set gameState cm_main 3

###updates boss bars###
execute store result bossbar gm:blue value run scoreboard players get @e[tag=blue,tag=capturePoint,limit=1] ctp_pointHealth
execute store result bossbar gm:red value run scoreboard players get @e[tag=red,tag=capturePoint,limit=1] ctp_pointHealth

###updates scoreboard###
execute store result score blue ctp_pointHealth run scoreboard players get @e[tag=blue,tag=capturePoint,limit=1] ctp_pointHealth
scoreboard players operation blue ctp_pointHealth *= $multiplier ctp_pointHealth
scoreboard players operation blue ctp_pointHealth /= pointsToWin gm_options
execute store result score red ctp_pointHealth run scoreboard players get @e[tag=red,tag=capturePoint,limit=1] ctp_pointHealth
scoreboard players operation red ctp_pointHealth *= $multiplier ctp_pointHealth
scoreboard players operation red ctp_pointHealth /= pointsToWin gm_options
scoreboard players operation §9Blue ctp_showHealth = blue ctp_pointHealth
scoreboard players operation §cRed ctp_showHealth = red ctp_pointHealth

tellraw @a {"text":"----------------------","color":"aqua","bold":true}
tellraw @a {"text":"Capture the Point","color":"gold","bold":true,"underlined":true}
tellraw @a {"text":"Aim: Capture the enemy point and keep yours safe!","color":"aqua"}
tellraw @a {"text":"----------------------","color":"aqua","bold":true}

