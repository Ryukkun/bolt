# called when blue win
# game:freeze_tag/round_handling/round_ends/blue | called by game:freeze_tag/round_handling/single_check|other_check
scoreboard players add @e[tag=blue,tag=spawn,limit=1] ft_wins 1

tellraw @a ["",{"text":"\nGame > ","bold":true,"color":"dark_green"},{"text":"Blue","color":"blue","bold":true},{"text":" has won the round!\n","color":"gold","bold":true}]

execute store result bossbar gm:blue value run scoreboard players get @e[tag=blue,tag=spawn,limit=1] ft_wins

function game:freeze_tag/round_handling/round_ends/global

