# called when they have a trigger of 6 to toggle name tags
# lobby:options/option/6/main | called by lobby:options/option/check
# @s = player with a options trigger of 6


execute if score gameMode cm_main matches 3 run function lobby:options/option/6/freeze_tag
execute unless score gameMode cm_main matches 3 run function lobby:options/option/6/general


function lobby:options/sign/6/update
