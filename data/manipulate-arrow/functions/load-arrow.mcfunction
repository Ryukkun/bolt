# member id
data modify storage kh:uuids check_uuid set from entity @s Owner
function kill_handle:uuid_check/start
scoreboard players operation @s gm_id = $id kh_mathTacking

# data modify
data merge entity @s {NoGravity:1b}
data merge entity @s {Glowing:1b}
# 初速計算
function manipulate-arrow:calc/calc-speed/
#team join
team join Purple @s

## Tag
tag @s add Ryu.MArrow.Loaded