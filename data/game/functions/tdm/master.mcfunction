#updates boss bars
execute store result bossbar gm:blue value run scoreboard players get @e[type=area_effect_cloud,tag=blue,tag=spawn,limit=1] tdm_kills
execute store result bossbar gm:red value run scoreboard players get @e[type=area_effect_cloud,tag=red,tag=spawn,limit=1] tdm_kills

#end game
execute if score @e[tag=spawn,limit=1,sort=random] tdm_kills >= pointsToWin gm_options run function game:tdm/endgame

#rage quitting
execute if score relogTime mc_main matches 200.. run function game:tdm/endgame
