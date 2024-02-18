# blue win state
# game:winner/blue | called by game:*/winner_check

tellraw @a ["",{"text":"Game Over! Blue has won!","color":"gold","bold":true}]
title @a subtitle ["",{"text":"Blue","color":"blue","bold":true},{"text":" is the winner!","color":"gold","bold":true}]
scoreboard players add @a[team=1blue] wins 1