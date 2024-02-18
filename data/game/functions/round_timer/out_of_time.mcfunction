#called when the round time is up
execute if score gameMode cm_main matches 0 run function game:ctf/endgame
execute if score gameMode cm_main matches 1 run function game:ctp/endgame
execute if score gameMode cm_main matches 2 run function game:ffa/endgame
execute if score gameMode cm_main matches 3 run function game:freeze_tag/round_handling/check
execute if score gameMode cm_main matches 4 run function game:tdm/endgame