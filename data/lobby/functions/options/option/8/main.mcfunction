# called when they have a trigger of 8 to toggle kill streaks
# lobby:options/option/8/main | called by lobby:options/option/check
# @s = player with a options trigger of 8

execute if score gameMode cm_main matches 3 run function lobby:options/option/8/freeze_tag
execute unless score gameMode cm_main matches 3 run function lobby:options/option/8/general

function lobby:options/sign/8/update
