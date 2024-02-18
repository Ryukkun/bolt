# called when a player whats to know what the this option does
# lobby:signs/help/options/tab_scoreboard | called by lobby:signs/help/options/check
# @s = player who needs help

tellraw @s {"text":"\n\n\n\nScore in Tab\n","bold":true,"color":"#1DCDCD","underlined": true}
tellraw @s {"text":"You can change which score is visible in tab during a game. When kills are selected, it will show you current kill count for that game. If kill streaks are selected, it will show what your current kill streak is.","color":"#108E1F"}
tellraw @s ""
