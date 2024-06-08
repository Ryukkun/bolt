# called when map is 0 to reset the map storage cycles
# lobby:options/option/map/reset_map_cyle | called from may cycle functions

# Teams
execute unless score gameMode cm_main matches 2 run data modify storage lobby:map_minis Team set from storage lobby:map_minis Saved.Team
execute unless score gameMode cm_main matches 2 run data modify storage lobby:map_names Team set from storage lobby:map_names Saved.Team

# FFA
execute if score gameMode cm_main matches 2 run data modify storage lobby:map_names FFA set from storage lobby:map_names Saved.FFA
execute if score gameMode cm_main matches 2 run data modify storage lobby:map_minis FFA set from storage lobby:map_minis Saved.FFA