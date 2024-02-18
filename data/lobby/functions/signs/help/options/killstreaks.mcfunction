# called when a player whats to know what the this option does
# lobby:signs/help/options/killstreaks | called by lobby:signs/help/options/check
# @s = player who needs help

tellraw @s {"text":"\n\n\n\nEnable Kill Streaks\n","bold":true,"color":"#1DCDCD","underlined": true}
tellraw @s {"text":"When enabled, you will rack up points for every kill you get. The counter resets when you die. When you get enough kills without getting killed. you will receive special powerups.","color":"#108E1F"}
tellraw @s ""
