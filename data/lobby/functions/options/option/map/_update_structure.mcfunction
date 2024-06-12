#> lobby:options/option/map/_update_structure
# ストラクチャーブロックの更新 最初に_ついてないほう使ってくれ

# FFA
execute if score gameMode cm_main matches 2 if score map cm_main matches 0 run data merge block ~ ~ ~ {name:"map:mini/fuji"}
execute if score gameMode cm_main matches 2 if score map cm_main matches 1 run data merge block ~ ~ ~ {name:"map:mini/tomb"}
execute if score gameMode cm_main matches 2 if score map cm_main matches 2 run data merge block ~ ~ ~ {name:"map:mini/neon"}

# team
execute unless score gameMode cm_main matches 2 if score map cm_main matches 0 run data merge block ~ ~ ~ {name:"map:mini/mesa"}
execute unless score gameMode cm_main matches 2 if score map cm_main matches 1 run data merge block ~ ~ ~ {name:"map:mini/ice"}
execute unless score gameMode cm_main matches 2 if score map cm_main matches 2 run data merge block ~ ~ ~ {name:"map:mini/warehouse"}
execute unless score gameMode cm_main matches 2 if score map cm_main matches 3 run data merge block ~ ~ ~ {name:"map:mini/caverns"}
execute unless score gameMode cm_main matches 2 if score map cm_main matches 4 run data merge block ~ ~ ~ {name:"map:mini/space"}
execute unless score gameMode cm_main matches 2 if score map cm_main matches 5 run data merge block ~ ~ ~ {name:"map:mini/nation"}
execute unless score gameMode cm_main matches 2 if score map cm_main matches 6 run data merge block ~ ~ ~ {name:"map:mini/meadow"}

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
#6 meadow
