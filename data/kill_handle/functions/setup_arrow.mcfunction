# Called as a arrow who has not been setup
# kill_handling:setup_arrow | called from main:phases/in_game
# @s = arrow
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:12000,NoGravity:1,Tags:["kh_arrow","map","kh_tracer","gm_anti_spawn","kh_selected"]}
#Handle player id
data modify storage kh:uuids check_uuid set from entity @s Owner
function kill_handle:uuid_check/start
scoreboard players operation @e[type=area_effect_cloud,distance=..1,tag=kh_selected,tag=kh_arrow,sort=nearest,limit=1] gm_id = $id kh_mathTacking

#id the armour stand and area_effect_cloud
scoreboard players operation @s kh_arrowId = $arrows kh_arrowId
scoreboard players operation @e[type=area_effect_cloud,distance=..1,tag=kh_selected,tag=kh_arrow,sort=nearest,limit=1] kh_arrowId = $arrows kh_arrowId

scoreboard players add $arrows kh_arrowId 1

#update tags
tag @e[type=area_effect_cloud,distance=..1,tag=kh_selected,tag=kh_arrow,sort=nearest,limit=1] remove kh_selected
tag @s add setup
tag @s add kh_arrow
tag @s add gm_anti_spawn
