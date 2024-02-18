#called to update the map cycle sign
# lobby:options/sign/map/update | called by lobby:options/map/next|previous

execute if score map cm_main matches -1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=map_sign] run data merge block ~ ~ ~ {Text3:'{"text":"Random","color":"aqua"}'}

execute unless score map cm_main matches -1 unless score gameMode cm_main matches 2 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=map_sign] run data merge block ~ ~ ~ {Text3:'{"nbt":"Team[0]","storage":"lobby:map_names","color":"green","interpret":false}'}
execute unless score map cm_main matches -1 if score gameMode cm_main matches 2 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=map_sign] run data merge block ~ ~ ~ {Text3:'{"nbt":"FFA[0]","storage":"lobby:map_names","color":"green","interpret":false}'}
