# called when they have a trigger of 7 to cycle the game time
# lobby:options/option/7/main | called by lobby:options/option/check
# @s = player with a options trigger of 7

execute if score gameMode cm_main matches 0..1 run function lobby:options/option/7/capture
execute if score gameMode cm_main matches 2 run function lobby:options/option/7/killing
execute if score gameMode cm_main matches 3 run function lobby:options/option/7/freeze_tag
execute if score gameMode cm_main matches 4 run function lobby:options/option/7/killing
