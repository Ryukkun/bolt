#called to update the structure block that shows the map mini
# lobby:options/option/map/update_structure | called from lobby:options/option/map/next & lobby:options/option/map/previous & lobby:load_lobby

execute if score gameMode cm_main matches 2 run data modify block 20 44 -3 name set from storage lobby:map_minis FFA[0]
execute unless score gameMode cm_main matches 2 run data modify block 20 44 -3 name set from storage lobby:map_minis Team[0]

execute if score map cm_main matches -1 run data merge block 20 44 -3 {name:"map:mini/random"}

setblock 20 45 -3 stone
setblock 20 45 -3 redstone_block

#map ids
#0 mesa, fuji
#1 ice, tomb
#2 warehouse, neon
#3 caverns, Nether
#4 space
#5 Nation
#6 
