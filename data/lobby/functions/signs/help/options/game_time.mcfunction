# called when a player whats to know what the this option does
# lobby:signs/help/options/game_time | called by lobby:signs/help/options/check
# @s = player who needs help

tellraw @s {"text":"\n\n\n\nGame/ Round Time\n","bold":true,"color":"#1DCDCD","underlined": true}
execute unless score gameMode cm_main matches 3 run tellraw @s {"text":"\nThe game time defines how long the game can last for before being forced to end. The team who is clostest to winning will win, if both teams are dew it will be a draw.","color":"#108E1F"}
execute if score gameMode cm_main matches 3 run tellraw @s {"text":"\nRound time controlls how long each round will last on freeze tag, when the time is up the team with the least amount of frozen people will win that round. If its a daw they both get a point","color":"#108E1F"}
tellraw @s ""
