#called as a player who has kill streak of 3
# killstreak:streak/level_2 | called from killstreak:check_streak
# @s = player with streak of 3
function killstreak:items/ice_grenade
function killstreak:items/ice_grenade

#msg
tellraw @a ["",{"selector":"@s","bold":true,"color":"gold"},{"text":" is on a killing spree! ","bold":true,"color":"#BB1111"},{"text":"(3 player kill streak)","color":"aqua"}]
