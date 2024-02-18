# called to warn a player standing on spawn they are about to get frozen
# game:freeze_tag/auto_freeze/init_warning | called by game:freeze_tag/auto_freeze/main

tellraw @s ["",{"text": "WARNING!","color":"gold","bold": true},{"text": " You are about to be frozzen for being too close to spawn","color":"red"}]
execute at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1000000 0.9 1
