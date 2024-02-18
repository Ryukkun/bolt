bossbar set ffa:leader players @a
bossbar set ffa:leader visible true
execute store result bossbar ffa:leader max run scoreboard players get pointsToWin gm_options
team join 1ffa @a[team=!spectator]

scoreboard players reset * gm_killMaths
scoreboard players reset * ffa_leaders
scoreboard players set $count ffa_leaders 0
scoreboard players set $newLeader ffa_leaders 1

tag @a[team=1ffa] add ingame
tag @a[team=1ffa] add needspawn
tag @a remove ffa_leader

function game:ffa/update_kills
function game:ffa/spreadplayers

bossbar set ffa:leader value 0

scoreboard players set gameState cm_main 3

tellraw @a {"text":"----------------------","color":"aqua","bold":true}
tellraw @a {"text":"Free For All","color":"gold","bold":true,"underlined":true}
tellraw @a ["",{"text":"Aim: First to get ","color":"aqua"},{"score":{"name":"pointsToWin","objective":"gm_options"},"color":"gold"},{"text":" kills wins!","color":"aqua"}]
tellraw @a {"text":"----------------------","color":"aqua","bold":true}
