#called as a player who has kill streak of 5
# killstreak:streak/level_3 | called from killstreak:check_streak
# @s = player with streak of 5
function killstreak:items/quick_bow

#msg
tellraw @a ["",{"selector":"@s","bold":true,"color":"gold"},{"text":" is on a killing spree! ","bold":true,"color":"#BB1111"},{"text":"(5 player kill streak)","color":"aqua"}]
