#called as a player who has kill streak of 8
# killstreak:streak/level_4 | called from killstreak:check_streak
# @s = player with streak of 8
function killstreak:items/paint_trap
function killstreak:items/paint_trap

#msg
tellraw @a ["",{"selector":"@s","bold":true,"color":"gold"},{"text":" is on a rampage! ","bold":true,"color":"#BB1111"},{"text":"(10 player kill streak)","color":"aqua"}]

