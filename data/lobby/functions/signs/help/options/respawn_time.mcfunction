# called when a player whats to know what keep teams mean
# lobby:signs/help/options/respawn_time | called by lobby:signs/help/options/check
# @s = player who needs help

tellraw @s {"text":"\n\n\n\nRespawn Time\n","bold":true,"color":"#1DCDCD","underlined": true}
tellraw @s {"text":"Here you can change how long it takes a player to respawn after dying.","color":"#108E1F"}
tellraw @s ""
