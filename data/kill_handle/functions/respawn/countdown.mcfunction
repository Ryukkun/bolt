# Called when a player is dead to do respawning
# kill_handle:respawn/countdown | called from kill_handle:respawn/main
# @s = dead player
scoreboard players operation $timeLeft kh_mathTacking = respawnTime gm_options
scoreboard players operation $timeLeft kh_mathTacking -= @s kh_respawnTime
scoreboard players operation $timeLeft kh_mathTacking /= #second cm_miscellaneous

title @s times 0 25 5
title @s title ["",{"text":"Respawning in ","color":"red"},{"score":{"name":"$timeLeft","objective":"kh_mathTacking"},"bold":true,"color":"gold"}]
