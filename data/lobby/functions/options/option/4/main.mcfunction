# called when they have a trigger of 4 to toggle name tags
# lobby:options/option/4/main | called by lobby:options/option/check
# @s = player with a options trigger of 4

scoreboard players add nametags gm_options 1
execute if score nametags gm_options matches 2.. run scoreboard players set nametags gm_options 0

function lobby:options/sign/4/update
