# called when they shift click on the gamemode cycle sign
# lobby:signs/help/options/gamemode/main | called by lobby:signs/help/options/check
# @s = player who needs help

execute if score gameMode cm_main matches 0 run function lobby:signs/help/options/gamemodes/ctf
execute if score gameMode cm_main matches 1 run function lobby:signs/help/options/gamemodes/ctp
execute if score gameMode cm_main matches 2 run function lobby:signs/help/options/gamemodes/ffa
execute if score gameMode cm_main matches 3 run function lobby:signs/help/options/gamemodes/freeze_tag
execute if score gameMode cm_main matches 4 run function lobby:signs/help/options/gamemodes/tdm
