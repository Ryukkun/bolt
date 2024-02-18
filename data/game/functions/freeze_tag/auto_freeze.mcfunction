#called to freeze people afking at spawns
# game:freeze_tag/auto_freeze | called by game:freeze_tag/main

execute at @e[type=area_effect_cloud,tag=spawn] run tellraw @a[distance=..5,scores={gm_inGame=1..},tag=!frozen] ["",{"text": "WARNING!","color":"gold","bold": true},{"text": " You have remained to close to spawn","color":"red"}]
execute at @e[type=area_effect_cloud,tag=spawn] run tag @a[distance=..5,scores={gm_inGame=1..},tag=!frozen] add auto_freeze

execute if entity @a[tag=auto_freeze] run tellraw @a ["",{"selector": "@a[tag=auto_freeze]","color":"aqua","bold": true},{"text": " Were too close to there spawn and were automaticly frozen","color":"red"}]
execute as @a[tag=auto_freeze] at @s run function kill_handle:killed/freeze/error
tag @a[tag=auto_freeze] remove auto_freeze
