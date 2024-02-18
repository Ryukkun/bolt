# called when only 1 team wins
# game:freeze_tag/round_handling/single_check | called by game:freeze_tag/round_handling/check

scoreboard players remove pointsToWin gm_options 1

#End game checks
execute unless entity @a[team=3red,tag=!frozen] if score @e[tag=blue,tag=spawn,limit=1] ft_wins >= pointsToWin gm_options run function game:freeze_tag/round_handling/game_ends/blue
execute unless entity @a[team=1blue,tag=!frozen] if score @e[tag=red,tag=spawn,limit=1] ft_wins >= pointsToWin gm_options run function game:freeze_tag/round_handling/game_ends/red

#end round checks
execute unless entity @a[team=3red,tag=!frozen] if score @e[tag=blue,tag=spawn,limit=1] ft_wins < pointsToWin gm_options run function game:freeze_tag/round_handling/round_ends/blue
execute unless entity @a[team=1blue,tag=!frozen] if score @e[tag=red,tag=spawn,limit=1] ft_wins < pointsToWin gm_options run function game:freeze_tag/round_handling/round_ends/red

scoreboard players add pointsToWin gm_options 1
