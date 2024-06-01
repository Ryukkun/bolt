# called when a player whats to know what the this option does
# lobby:signs/help/options/item_point_dropping | called by lobby:signs/help/options/check
# @s = player who needs help

execute if score gameMode cm_main matches 0..1 run tellraw @s {"text":"\n\n\n\nAllow items on Capture Points\n","bold":true,"color":"#1DCDCD","underlined": true}
execute if score gameMode cm_main matches 0..1 run tellraw @s {"text":"When this option is enabled, you will be able to drop powerups like Paint Traps and Honey Traps on your team's capture points.","color":"#108E1F"}
execute if score gameMode cm_main matches 0..1 run tellraw @s ""

execute unless score gameMode cm_main matches 0..1 run tellraw @s {"text":"\n\n\n\n矢への効果\n","bold":true,"color":"#1DCDCD","underlined": true}
execute unless score gameMode cm_main matches 0..1 run tellraw @s [{"text": "","font":"uniform","color":"#108E1F"},{"text":"矢に対する挙動を変更することができます。現在実装されている項目は以下の通りです。\n    - ノーマル : ノーマル (初期設定)\n    - 操弾"},{"text":"     ,","color": "dark_gray"},{"text":": 矢が打ったプレイヤーが向いている方向に進む"}]
execute unless score gameMode cm_main matches 0..1 run tellraw @s ""