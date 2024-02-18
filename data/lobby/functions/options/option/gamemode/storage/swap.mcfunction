#called when changing gamemode to swap storage
# lobby:options/option/gamemode/storage/swap

execute if data storage lobby:saved_options current.id store result score last_mode cm_miscellaneous run data get storage lobby:saved_options current.id

execute if score last_mode cm_miscellaneous matches 0 run data modify storage lobby:saved_options CTF set from storage lobby:saved_options current
execute if score last_mode cm_miscellaneous matches 1 run data modify storage lobby:saved_options CTP set from storage lobby:saved_options current
execute if score last_mode cm_miscellaneous matches 2 run data modify storage lobby:saved_options FFA set from storage lobby:saved_options current
execute if score last_mode cm_miscellaneous matches 3 run data modify storage lobby:saved_options FreezeTag set from storage lobby:saved_options current
execute if score last_mode cm_miscellaneous matches 4 run data modify storage lobby:saved_options TDM set from storage lobby:saved_options current

execute if score gameMode cm_main matches 0 run data modify storage lobby:saved_options current set from storage lobby:saved_options CTF
execute if score gameMode cm_main matches 1 run data modify storage lobby:saved_options current set from storage lobby:saved_options CTP
execute if score gameMode cm_main matches 2 run data modify storage lobby:saved_options current set from storage lobby:saved_options FFA
execute if score gameMode cm_main matches 3 run data modify storage lobby:saved_options current set from storage lobby:saved_options FreezeTag
execute if score gameMode cm_main matches 4 run data modify storage lobby:saved_options current set from storage lobby:saved_options TDM
