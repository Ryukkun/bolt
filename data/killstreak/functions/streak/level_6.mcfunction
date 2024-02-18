#called as a player who has kill streak of 16
# killstreak:streak/level_6 | called from killstreak:check_streak
# @s = player with streak of 16
function killstreak:items/tidal_wave

#msg
tellraw @a ["",{"selector":"@s","bold":true,"color":"gold"},{"text":" is a killing machine! ","bold":true,"color":"#BB1111"},{"text":"(16 player kill streak)","color":"aqua"}]

playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.3 2 0.3
