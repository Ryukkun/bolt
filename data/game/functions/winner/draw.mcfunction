# draw win messages
# game:winner/draw | called by game:*/winner_check

tellraw @a ["",{"text":"Game Over - Draw","color":"gold","bold":true}]
title @a subtitle ["",{"text":"Draw!","bold":true,"color":"gold"},{"text":"No one won any rounds","bold":true,"color":"gold"}]
