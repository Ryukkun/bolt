#called when a round has been ended before a team is full fozen and where no team is on their last round
# game:freeze_tag/round_handling/round_ends/alternet_end_check | called by game:freeze_tag/round_handling/other_check 

execute if score playersAlive ft_wins matches 1.. run function game:freeze_tag/round_handling/round_ends/blue
execute if score playersAlive ft_wins matches ..-1 run function game:freeze_tag/round_handling/round_ends/red
execute if score playersAlive ft_wins matches 0 run function game:freeze_tag/round_handling/round_ends/draw