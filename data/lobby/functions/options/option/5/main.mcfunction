# called when they have a trigger of 5 to enable power up point dropping
# lobby:options/option/5/main | called by lobby:options/option/check
# @s = player with a options trigger of 5

scoreboard players add ks_pointDropping gm_options 1
execute if score ks_pointDropping gm_options matches 2.. run scoreboard players set ks_pointDropping gm_options 0

function lobby:options/sign/5/update
