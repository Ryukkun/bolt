# called when they have a trigger of 8 to toggle kill streaks
# lobby:options/option/8/main | called by lobby:options/option/check
# @s = player with a options trigger of 8

scoreboard players add killstreaks gm_options 1
execute if score killstreaks gm_options matches 2.. run scoreboard players set killstreaks gm_options 0

function lobby:options/sign/8/update
