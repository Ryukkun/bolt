# called when a player whats to know what keep teams mean
# lobby:signs/help/options/keep_teams | called by lobby:signs/help/options/check
# @s = player who needs help

tellraw @s {"text":"\n\n\n\nKeep Teams\n","bold":true,"color":"#1DCDCD","underlined": true}
tellraw @s {"text":"If enabled, at the end of a game your team will remain the same.","color":"#108E1F"}
tellraw @s ""
