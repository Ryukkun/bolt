# called when red win
# game:freeze_tag/round_handling/round_ends/red | called by game:freeze_tag/round_handling/single_check|other_check
scoreboard players add @e[tag=red,tag=spawn,limit=1] ft_wins 1

tellraw @a ["",{"text":"\nGame > ","bold":true,"color":"dark_green"},{"text":"Red","color":"red","bold":true},{"text":" won the round!\n","color":"gold","bold":true}]

execute store result bossbar gm:red value run scoreboard players get @e[tag=red,tag=spawn,limit=1] ft_wins

function game:freeze_tag/round_handling/round_ends/global
