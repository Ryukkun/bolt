# called when a player whats to know what the this option does
# lobby:signs/help/options/tab_scoreboard | called by lobby:signs/help/options/check
# @s = player who needs help

execute unless score gameMode cm_main matches 3 run tellraw @s {"text":"\n\n\n\nScore in Tab\n","bold":true,"color":"#1DCDCD","underlined": true}
execute unless score gameMode cm_main matches 3 run tellraw @s {"text":"You can change which score is visible in tab during a game. When kills are selected, it will show you current kill count for that game. If kill streaks are selected, it will show what your current kill streak is.","color":"#108E1F"}
execute unless score gameMode cm_main matches 3 run tellraw @s ""

execute if score gameMode cm_main matches 3 run tellraw @s {"text":"\n\n\n\nフレンドリーファイヤー\n","bold":true,"color":"#1DCDCD","underlined": true}
execute if score gameMode cm_main matches 3 run tellraw @s {"text":"OFFにすることで、凍ってしまったプレイヤーが味方をキルしてしまうバグを修正することができます。これもBOLTの醍醐味と思う人は、ONにすることでフレンドリーファイヤーを有効化することができます。初期設定はOFF。","color":"#108E1F"}
execute if score gameMode cm_main matches 3 run tellraw @s ""