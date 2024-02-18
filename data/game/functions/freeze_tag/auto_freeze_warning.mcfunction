# Called to warn anyone in there spawn they will be freezed if they dont get there asses out
# game:freeze_tag/auto_freeze_warning | Called from game:freeze_tag/end_round/main

execute at @e[type=area_effect_cloud,tag=spawn] run tellraw @a[distance=..5,scores={gm_inGame=1..}] ["",{"text": "WARNING!","color":"gold","bold": true},{"text": " You are about to be frozzen for being too close to spawn","color":"red"}]
