#called as a player who has kill streak of 12
# killstreak:streak/level_5 | called from killstreak:check_streak
# @s = player with streak of 12
function killstreak:items/extra_life

#msg
tellraw @a ["",{"selector":"@s","bold":true,"color":"gold"},{"text":" is unstoppable! ","bold":true,"color":"#BB1111"},{"text":"(13 player kill streak)","color":"aqua"}]

playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.3 1.5 0.3
