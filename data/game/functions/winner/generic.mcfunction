#called for the generic parts of a win message
# game:winner/generic | called by game:*/winner_check

title @a times 0 70 10
title @a title ["",{"text":"Game Over!","color":"red","bold":true}]
tellraw @a {"text":"\n\n\n","color":"aqua","bold":true}
tellraw @a[scores={gm_inGame=1}] {"text":"Your stats:","color":"gold","bold":true}