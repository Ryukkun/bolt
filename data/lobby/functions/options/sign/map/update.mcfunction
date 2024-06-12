#called to update the map cycle sign
# lobby:options/sign/map/update | called by lobby:options/map/next|previous

execute if score map cm_main matches -1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=map_sign] run data merge block ~ ~ ~ {Text3:'{"text":"Random","color":"aqua"}'}

# team
execute if score map cm_main matches 0 unless score gameMode cm_main matches 2 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=map_sign] run data merge block ~ ~ ~ {Text3:'{"text":"Mesa","color":"green","interpret":false}'}
execute if score map cm_main matches 1 unless score gameMode cm_main matches 2 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=map_sign] run data merge block ~ ~ ~ {Text3:'{"text":"Ice","color":"green","interpret":false}'}
execute if score map cm_main matches 2 unless score gameMode cm_main matches 2 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=map_sign] run data merge block ~ ~ ~ {Text3:'{"text":"Warehouse","color":"green","interpret":false}'}
execute if score map cm_main matches 3 unless score gameMode cm_main matches 2 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=map_sign] run data merge block ~ ~ ~ {Text3:'{"text":"Caverns","color":"green","interpret":false}'}
execute if score map cm_main matches 4 unless score gameMode cm_main matches 2 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=map_sign] run data merge block ~ ~ ~ {Text3:'{"text":"Space","color":"green","interpret":false}'}
execute if score map cm_main matches 5 unless score gameMode cm_main matches 2 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=map_sign] run data merge block ~ ~ ~ {Text3:'{"text":"Nation","color":"green","interpret":false}'}
execute if score map cm_main matches 6 unless score gameMode cm_main matches 2 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=map_sign] run data merge block ~ ~ ~ {Text3:'{"text":"Meadow","color":"green","interpret":false}'}

# FFA
execute if score map cm_main matches 0 if score gameMode cm_main matches 2 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=map_sign] run data merge block ~ ~ ~ {Text3:'{"text":"Fuji","color":"green","interpret":false}'}
execute if score map cm_main matches 1 if score gameMode cm_main matches 2 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=map_sign] run data merge block ~ ~ ~ {Text3:'{"text":"Tomb","color":"green","interpret":false}'}
execute if score map cm_main matches 2 if score gameMode cm_main matches 2 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=map_sign] run data merge block ~ ~ ~ {Text3:'{"text":"Nation","color":"green","interpret":false}'}


#map ids
#0 mesa, fuji
#1 ice, tomb
#2 warehouse, neon
#3 caverns, Nether
#4 space
#5 Nation
#6 meadow