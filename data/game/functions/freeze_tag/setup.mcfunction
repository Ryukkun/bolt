#called to setup freeze tag
# game:freeze_tag/setup | 

bossbar set gm:red players @a
bossbar set gm:blue players @a
bossbar set gm:red visible true
bossbar set gm:blue visible true

bossbar set gm:red name {"text": "Red Rounds Won","color":"red","bold": true}
bossbar set gm:blue name {"text": "Blue Rounds Won","color":"blue","bold": true}

execute store result bossbar gm:blue max run scoreboard players get pointsToWin gm_options
execute store result bossbar gm:red max run scoreboard players get pointsToWin gm_options

bossbar set gm:blue value 0
bossbar set gm:red value 0

scoreboard players set @e[tag=spawn,type=area_effect_cloud] ft_wins 0
scoreboard players reset @a ft_autoFreeze

tag @a remove frozen

scoreboard players set gameState cm_main 3

tellraw @a {"text":"----------------------","color":"aqua","bold":true}
tellraw @a {"text":"Freeze Tag","color":"gold","bold":true,"underlined":true}
tellraw @a {"text":"Aim: To freeze the whole enemy team!","color":"aqua"}
tellraw @a {"text":"----------------------","color":"aqua","bold":true}

