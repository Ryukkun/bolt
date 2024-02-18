#called to check who has won and how
# game:freeze_tag/round_handling/check | called by game:freeze_tag/main

scoreboard players set gameState cm_main 2

execute if score teamsFrozen gm_main matches 1 run function game:freeze_tag/round_handling/single_check
execute if score teamsFrozen gm_main matches 2 run function game:freeze_tag/round_handling/draw_check
execute unless score teamsFrozen gm_main matches 1.. run function game:freeze_tag/round_handling/other_check

scoreboard players reset teamsFrozen gm_main
