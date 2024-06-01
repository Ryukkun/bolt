# called when they have a trigger of 5 to enable power up point dropping
# lobby:options/option/5/main | called by lobby:options/option/check
# @s = player with a options trigger of 5

execute if score gameMode cm_main matches 0..1 run function lobby:options/option/5/capture
execute unless score gameMode cm_main matches 0..1 run function lobby:options/option/5/not_capture


function lobby:options/sign/5/update
