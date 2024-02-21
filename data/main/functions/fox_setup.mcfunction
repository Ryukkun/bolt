# setup

# スコア初期化
scoreboard players set $friendlyFire fox_settings 0
scoreboard players set $collisionRule fox_settings 0



# Map追加
data modify storage lobby:map_minis Saved.Team append value "map:mini/fantasia"
data modify storage lobby:map_names Saved.Team append value "Fantasia"

data modify storage lobby:map_minis Team set from storage lobby:map_minis Saved.Team
data modify storage lobby:map_names Team set from storage lobby:map_names Saved.Team


scoreboard players set $setup fox_main 1