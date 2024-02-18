# called when people first got near a options so they know they can shift click on signs
# lobby:options/hint | called by lobby:main

tellraw @s ["",{"text":"! ","bold":true,"color":"gold"},{"text":"Did you know? ","color":"#33cc00"},{"text":"! ","bold":true,"color":"gold"}]
tellraw @s {"text":"If you hold shift and click on a sign, it will explain what that option is!","color":"#DB9600"}

tag @s add got_options_hint
