# called when a player whats to know what points to win
# lobby:signs/help/options/points_to_win | called by lobby:signs/help/options/check
# @s = player who needs help

tellraw @s {"text":"\n\n\n\nPoints to Win\n","bold":true,"color":"#1DCDCD","underlined": true}
execute if score gameMode cm_main matches 0 run tellraw @s {"text":"In Capture the Flag, points to win is how many flag captures are needed to win the game!","color":"#108E1F"}
execute if score gameMode cm_main matches 1 run tellraw @s {"text":"In Capture the Point, points to win is about the number of of hit points (HP) that the points have. To win, you need to get this value to 0.","color":"#108E1F"}
execute if score gameMode cm_main matches 2 run tellraw @s {"text":"In Free for All, points to win is the amount of kills you need to win.","color":"#108E1F"}
execute if score gameMode cm_main matches 3 run tellraw @s {"text":"In Freeze Tag, points to win is the number of rounds you need to win. To win a round you need to either freeze all the enemies or wait for the time to run out with less players frozen.","color":"#108E1F"}
execute if score gameMode cm_main matches 4 run tellraw @s {"text":"In Team Death Match, points to win is the count of enemy kills a team needs to achieve to win the game.","color":"#108E1F"}
tellraw @s ""
