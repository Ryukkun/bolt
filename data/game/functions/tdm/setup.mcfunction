bossbar set gm:red players @a
bossbar set gm:blue players @a
bossbar set gm:red visible true
bossbar set gm:blue visible true

bossbar set gm:red name {"text": "Red kills","color":"red"}
bossbar set gm:blue name {"text": "Blue kills","color":"blue"}

execute store result bossbar gm:blue max run scoreboard players get pointsToWin gm_options
execute store result bossbar gm:red max run scoreboard players get pointsToWin gm_options

scoreboard players set @e[tag=spawn,type=area_effect_cloud] points 0

scoreboard players set gameState cm_main 3

tellraw @a {"text":"----------------------","color":"aqua","bold":true}
tellraw @a {"text":"Team Death Match","color":"gold","bold":true,"underlined":true}
tellraw @a ["",{"text":"Aim: First team to get ","color":"aqua"},{"score":{"name":"pointsToWin","objective":"options"},"color":"gold"},{"text":" kills wins!","color":"aqua"}]
tellraw @a {"text":"----------------------","color":"aqua","bold":true}
