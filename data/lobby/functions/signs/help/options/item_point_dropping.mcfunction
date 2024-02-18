# called when a player whats to know what the this option does
# lobby:signs/help/options/item_point_dropping | called by lobby:signs/help/options/check
# @s = player who needs help

tellraw @s {"text":"\n\n\n\nAllow items on Capture Points\n","bold":true,"color":"#1DCDCD","underlined": true}
tellraw @s {"text":"When this option is enabled, you will be able to drop powerups like Paint Traps and Honey Traps on your team's capture points.","color":"#108E1F"}
tellraw @s ""
