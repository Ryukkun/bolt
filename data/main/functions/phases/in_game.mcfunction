# Called when in the game phases
# main:pahse/game | called from main:main

#core mains
function kill_handle:main
execute unless score gameMode cm_main matches 3 run function killstreak:main
function game:master

execute unless score gameMode cm_main matches 2..3 at @e[type=area_effect_cloud,tag=spawn] as @e[tag=gm_anti_spawn,distance=..5] run kill @s

#running the game functions to allow game to function
execute if score gameMode cm_main matches 0 run function game:ctf/master
execute if score gameMode cm_main matches 1 run function game:ctp/master
execute if score gameMode cm_main matches 2 run function game:ffa/master
execute if score gameMode cm_main matches 3 run function game:freeze_tag/main
execute if score gameMode cm_main matches 4 run function game:tdm/master
