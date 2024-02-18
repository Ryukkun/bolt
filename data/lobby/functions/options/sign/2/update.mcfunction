# called to update sign 2
# lobby:options/sign/2/main

execute if score gameMode cm_main matches 0 run function lobby:options/sign/2/ctf
execute if score gameMode cm_main matches 1 run function lobby:options/sign/2/ctp
execute if score gameMode cm_main matches 2 run function lobby:options/sign/2/ffa
execute if score gameMode cm_main matches 3 run function lobby:options/sign/2/freeze_tag
execute if score gameMode cm_main matches 4 run function lobby:options/sign/2/tdm
