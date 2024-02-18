# called when only both team wins
# game:freeze_tag/round_handling/draw_check | called by game:freeze_tag/round_handling/check

scoreboard players remove pointsToWin gm_options 1

#check if it is the last round and if so who has the greater score
execute if score @e[tag=blue,tag=spawn,limit=1] ft_wins >= pointsToWin gm_options if score @e[tag=blue,tag=spawn,limit=1] ft_wins > @e[tag=red,tag=spawn,limit=1] ft_wins run function game:freeze_tag/round_handling/game_ends/blue
execute if score @e[tag=red,tag=spawn,limit=1] ft_wins >= pointsToWin gm_options if score @e[tag=red,tag=spawn,limit=1] ft_wins > @e[tag=blue,tag=spawn,limit=1] ft_wins run function game:freeze_tag/round_handling/game_ends/red
execute if score @e[tag=blue,tag=spawn,limit=1] ft_wins >= pointsToWin gm_options if score @e[tag=red,tag=spawn,limit=1] ft_wins >= pointsToWin gm_options run function game:freeze_tag/round_handling/game_ends/draw

#if it is not the last round announce they drew
execute if score @e[tag=blue,tag=spawn,limit=1] ft_wins < pointsToWin gm_options if score @e[tag=red,tag=spawn,limit=1] ft_wins < pointsToWin gm_options run function game:freeze_tag/round_handling/round_ends/draw

scoreboard players add pointsToWin gm_options 1
