####ends game####
scoreboard players set gameState cm_main 4
scoreboard players add @a[team=0ffa_leader] wins 1
gamemode spectator @a

#####end game message#####
title @a times 0 80 10
title @a title ["",{"text":"Game Over! ","color":"red","bold":true}]
title @a subtitle ["",{"selector":"@a[team=0ffa_leader]","bold":true},{"text":" has won!","color":"dark_gray","bold":true}]
scoreboard players add @a[team=0ffa_leader] wins 1
tellraw @a {"text":"\n\n\n\n","color":"aqua","bold":true}
tellraw @a ["",{"text":"Game Over! ","color":"gold","bold":true},{"selector":"@a[team=0ffa_leader]","bold":true},{"text":" has won!","color":"dark_gray","bold":true}]
tellraw @a[scores={gm_inGame=1}] {"text":"Your stats:","color":"gold","bold":true}

######stats######
execute as @a[scores={gm_inGame=1}] run function game:ffa/stats_msg


####win message#####
tellraw @a {"text":"----------------------","color":"aqua","bold":true}
execute unless score relogTime gm_main matches 200.. run tellraw @a ["",{"selector":"@a[team=0ffa_leader]","bold":true},{"text":" has won!","color":"dark_gray","bold":true}]

execute if score relogTime gm_main matches 200.. run tellraw @a {"text":"Draw - a team left!","color":"gold","bold":true}
execute if score relogTime gm_main matches 200.. run title @a subtitle {"text":"Draw - a team left!","color":"gold","bold":true}

####resets#####
bossbar set ffa:leader visible false

execute as @a[team=!spectator] run function lobby:team/join/lobby

tag @a remove ingame
tag @a remove respawned
tag @a remove ffa_leader

#main end game function
function game:endgame

