# called when they have a trigger of 1
# lobby:options/option/2/main | called by lobby:options/option/check
# @s = player with a options trigger of 2

execute if score gameMode cm_main matches 0 run function lobby:options/option/2/ctf
execute if score gameMode cm_main matches 1 run function lobby:options/option/2/ctp
execute if score gameMode cm_main matches 2 run function lobby:options/option/2/ffa
execute if score gameMode cm_main matches 3 run function lobby:options/option/2/freeze_tag
execute if score gameMode cm_main matches 4 run function lobby:options/option/2/tdm

