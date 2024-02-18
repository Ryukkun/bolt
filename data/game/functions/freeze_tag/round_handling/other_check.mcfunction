# called when it is no know what triggered the end
# game:freeze_tag/round_handling/other_check | called by game:freeze_tag/round_handling/check

scoreboard players remove pointsToWin gm_options 1
#get the amount of alive players on each team and combine them
execute as @a[team=1blue,tag=!frozen] run scoreboard players add playersAlive ft_wins 1
execute as @a[team=3red,tag=!frozen] run scoreboard players remove playersAlive ft_wins 1
# >0 is more blue's alive, <0 is more reds alive, 0 means the teams are tied

#check if it is the last round and if so who has the greater score
execute if score playersAlive ft_wins matches 1.. if score @e[tag=blue,tag=spawn,limit=1] ft_wins >= pointsToWin gm_options run function game:freeze_tag/round_handling/game_ends/blue
execute if score playersAlive ft_wins matches ..-1 if score @e[tag=red,tag=spawn,limit=1] ft_wins >= pointsToWin gm_options run function game:freeze_tag/round_handling/game_ends/red
execute if score playersAlive ft_wins matches 0 if score @e[tag=blue,tag=spawn,limit=1] ft_wins >= pointsToWin gm_options if score @e[tag=red,tag=spawn,limit=1] ft_wins >= pointsToWin gm_options run function game:freeze_tag/round_handling/game_ends/draw

#if it is not the last round announcecheck who has won the round
execute if score @e[tag=blue,tag=spawn,limit=1] ft_wins < pointsToWin gm_options if score @e[tag=red,tag=spawn,limit=1] ft_wins < pointsToWin gm_options run function game:freeze_tag/round_handling/round_ends/alternet_end_check

scoreboard players add pointsToWin gm_options 1
scoreboard players reset playersAlive ft_wins
