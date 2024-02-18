#red win messages
# game:winner/red | called by game:*/winner_check

tellraw @a ["",{"text":"Game Over! Red has won!","color":"gold","bold":true}]
title @a subtitle ["",{"text":"Red","color":"red","bold":true},{"text":" is the winner!","color":"gold","bold":true}]
scoreboard players add @a[team=3red] wins 1