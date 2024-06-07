# Map追加
data modify storage lobby:map_minis Saved.Team append value "map:mini/meadow"
data modify storage lobby:map_names Saved.Team append value "Meadow"

data modify storage lobby:map_minis Team set from storage lobby:map_minis Saved.Team
data modify storage lobby:map_names Team set from storage lobby:map_names Saved.Team