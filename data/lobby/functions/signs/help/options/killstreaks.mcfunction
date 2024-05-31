# called when a player whats to know what the this option does
# lobby:signs/help/options/killstreaks | called by lobby:signs/help/options/check
# @s = player who needs help

execute unless score gameMode cm_main matches 3 run tellraw @s {"text":"\n\n\n\nEnable Kill Streaks\n","bold":true,"color":"#1DCDCD","underlined": true}
execute unless score gameMode cm_main matches 3 run tellraw @s {"text":"When enabled, you will rack up points for every kill you get. The counter resets when you die. When you get enough kills without getting killed. you will receive special powerups.","color":"#108E1F"}
execute unless score gameMode cm_main matches 3 run tellraw @s ""

execute if score gameMode cm_main matches 3 run tellraw @s {"text":"\n\n\n\n当たり判定\n","bold":true,"color":"#1DCDCD","underlined": true}
execute if score gameMode cm_main matches 3 run tellraw @s {"text":"自分のチーム以外の人との当たり判定を有効にすることができます。初期設定はOFFです。","color":"#108E1F"}
execute if score gameMode cm_main matches 3 run tellraw @s ""