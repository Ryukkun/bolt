# called when a powerup/ killstreak item is found
# killstreak:main | called from main:phases/in_game
# @s = item with powerup:1b nbt tag

execute as @s[tag=!ided] run function killstreak:setup/id

tag @s add selected_item

#check the item was not dropped in a blocked area
execute if score ks_pointDropping gm_options matches 0 if score gameMode cm_main matches 0..1 if entity @e[type=area_effect_cloud,tag=capturePoint,tag=map,distance=..4] as @s[nbt={OnGround:1b},nbt=!{Item:{tag:{sp_item:"tidal_wave"}}}] run function killstreak:return_item_all
execute if entity @e[type=area_effect_cloud,tag=spawn,tag=map,distance=..5] run function killstreak:return_item_all

#if the item is good, set it up, if not kill it
execute as @s[tag=!failed] run function killstreak:setup/item
kill @s[tag=failed]

tag @a[tag=selected_item] remove selected_item
