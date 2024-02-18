#called to figure out who won in ctf
# game:0/win_check | called by game:*/endgame

function game:winner/generic

#standard win
execute if score @e[tag=red,tag=spawn,limit=1] tdm_kills >= pointsToWin gm_options run function game:winner/red
execute if score @e[tag=blue,tag=spawn,limit=1] tdm_kills >= pointsToWin gm_options run function game:winner/blue

#a team leaves
execute if score relogTime gm_main matches 200.. unless entity @a[team=1blue] run function game:winner/red
execute if score relogTime gm_main matches 200.. unless entity @a[team=3red] run function game:winner/blue
execute if score relogTime gm_main matches 200.. unless entity @a[team=1blue] unless entity @a[team=3red] run function game:winner/draw

#out of time
execute unless score maxGameTime gm_options matches -1 if score roundTime gm_main >= maxGameTime gm_options if score @e[tag=red,tag=spawn,limit=1] tdm_kills > @e[tag=blue,tag=spawn,limit=1] tdm_kills run function game:winner/red
execute unless score maxGameTime gm_options matches -1 if score roundTime gm_main >= maxGameTime gm_options if score @e[tag=blue,tag=spawn,limit=1] tdm_kills > @e[tag=red,tag=spawn,limit=1] tdm_kills run function game:winner/red
execute unless score maxGameTime gm_options matches -1 if score roundTime gm_main >= maxGameTime gm_options if score @e[tag=blue,tag=spawn,limit=1] tdm_kills = @e[tag=red,tag=spawn,limit=1] tdm_kills run function game:winner/draw
