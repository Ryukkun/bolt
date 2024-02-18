#called to save the options into storage
# lobby:options/option/gamemode/storage/save | lobby:options/option/gamemode/

execute unless score gameMode cm_main matches 3 store result storage lobby:saved_options current.respawnTime int 1 run scoreboard players get RespawnTime gm_options
execute store result storage lobby:saved_options current.PointsToWin int 1 run scoreboard players get pointsToWin gm_options
execute unless score gameMode cm_main matches 2 store result storage lobby:saved_options current.KeepTeams int 1 run scoreboard players get keepTeams gm_options
execute store result storage lobby:saved_options current.Nametags int 1 run scoreboard players get nametags gm_options
execute if score gameMode cm_main matches 0..1 store result storage lobby:saved_options current.PointDropping int 1 run scoreboard players get ks_pointDropping gm_options
execute unless score gameMode cm_main matches 3 store result storage lobby:saved_options current.tabBoard int 1 run scoreboard players get tabScoreboard gm_options
execute store result storage lobby:saved_options current.gameTime int 1 run scoreboard players get maxGameTime gm_options
execute store result storage lobby:saved_options current.RandomPowerups int 1 run scoreboard players get randomPowerups gm_options
