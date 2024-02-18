tellraw @a {"text":"\n\n\n\n","color":"aqua","bold":true}

####ends game####
scoreboard players set gameState cm_main 4
gamemode spectator @a
tag @a[tag=flag] remove flag
kill @e[tag=flag]

###game over message####
function game:ctf/winner_check

#######Stats#########
#stats message
execute as @a[scores={gm_inGame=1}] run function game:ctf/stats_msg

#MVP calculations
scoreboard players reset * gm_killMaths
execute as @a run scoreboard players operation @s gm_killMaths = @s gst_points

scoreboard players set max gm_killMaths 1
scoreboard players operation max gm_killMaths > @a gst_points
execute if score max gm_killMaths matches 0 run scoreboard players set max gm_killMaths 1
scoreboard players operation @a gm_killMaths -= max gm_killMaths
#MVP message
tellraw @a {"text":"----------------------","color":"aqua","bold":true}
tellraw @a [{"text":"MVP: ","color":"aqua"},{"selector":"@a[scores={gm_killMaths=0}]","color":"gold"},{"text":" with ","color":"aqua"},{"score":{"name":"max","objective":"gm_killMaths"},"color":"gold"},{"text":" flags captured","color":"aqua"}]

####resets#####
bossbar set gm:blue visible false
bossbar set gm:red visible false

execute at @e[tag=blue,tag=capturePoint] run setblock ~ ~-2 ~ blue_terracotta
execute at @e[tag=red,tag=capturePoint] run setblock ~ ~-2 ~ red_terracotta

#main endgame function
function game:endgame