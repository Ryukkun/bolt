#called to load the options from storage
# lobby:options/option/gamemode/storage/save | lobby:options/option/gamemode/main

execute unless score gameMode cm_main matches 3 store result score respawnTime gm_options run data get storage lobby:saved_options current.RespawnTime
execute store result score pointsToWin gm_options run data get storage lobby:saved_options current.PointsToWin
execute unless score gameMode cm_main matches 2 store result score keepTeams gm_options run data get storage lobby:saved_options current.KeepTeams
execute store result score nametags gm_options run data get storage lobby:saved_options current.Nametags

execute if score gameMode cm_main matches 0..1 store result score ks_pointDropping gm_options run data get storage lobby:saved_options current.PointDropping
execute unless score gameMode cm_main matches 3 store result score tabScoreboard gm_options run data get storage lobby:saved_options current.tabBoard
execute store result score maxGameTime gm_options run data get storage lobby:saved_options current.gameTime
execute store result score killstreaks gm_options run data get storage lobby:saved_options current.killstreaks
