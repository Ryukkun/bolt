#called at the end of the game

###endgame####
scoreboard players set gameState cm_main 4
tag @a remove frozen
gamemode spectator @a


##########stats################
#stats message
execute as @a[scores={gm_inGame=1}] run function game:freeze_tag/stats_msg
#MVP calculations
scoreboard players reset * gm_killMaths
execute as @a[scores={kills=1..}] run scoreboard players operation @s gm_killMaths = @s kills

scoreboard players set max gm_killMaths 1
scoreboard players operation max gm_killMaths > @a[scores={kills=1..}] kills
execute if score max gm_killMaths matches 0 run scoreboard players set max gm_killMaths 1
scoreboard players operation @a gm_killMaths -= max gm_killMaths
#MVP message
tellraw @a {"text":"----------------------","color":"aqua","bold":true}
tellraw @a [{"text":"MVP: ","color":"aqua"},{"selector":"@a[scores={gm_killMaths=0}]","color":"gold"},{"text":" with ","color":"aqua"},{"score":{"name":"max","objective":"gm_killMaths"},"color":"gold"},{"text":" freezes","color":"aqua"}]


#######Resets#############
team join 3red @a[team=4frozen_red]
team join 1blue @a[team=2frozen_blue]

bossbar set gm:blue visible false
bossbar set gm:red visible false


#endgame function
function game:endgame
