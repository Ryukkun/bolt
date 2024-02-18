# called when a player whats to know what the name tags option does
# lobby:signs/help/options/nametags | called by lobby:signs/help/options/check
# @s = player who needs help

tellraw @s {"text":"\n\n\n\nShow Nametags\n","bold":true,"color":"#1DCDCD","underlined": true}
tellraw @s {"text":"When enabed, everyones nametags, including the enemies', will be visible to all players. This means you can see where everyone is on the map, so no more surprises!","color":"#108E1F"}
tellraw @s ""
