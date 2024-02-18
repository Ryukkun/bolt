#called to freeze people afking at spawns
# game:freeze_tag/auto_freeze/freeze | called by game:freeze_tag/auto_freeze/main
# @s = player with a auto freeze score of 300

tellraw @s[distance=..5,scores={gm_inGame=1..},tag=!frozen] ["",{"text": "WARNING!","color":"gold","bold": true},{"text": " You remained to close to spawn","color":"red"}]

tellraw @a ["",{"selector": "@s","color":"aqua","bold": true},{"text": " has been frozen for staying too close to spawn","color":"gold"}]
execute at @s run function kill_handle:killed/freeze/error

scoreboard players reset @s ft_autoFreeze
