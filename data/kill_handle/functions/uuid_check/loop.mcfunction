# Called to loop though the avalible ids
# kill_handling:uuid_check/loop
#
# score $success kh_mathTacking matches 1 
# @s = Player

scoreboard players reset $_success kh_mathTacking
data modify storage kh:uuids check set from storage kh:uuids check_uuid
execute store success score $_success kh_mathTacking run data modify storage kh:uuids check set from entity @s UUID

execute if score $_success kh_mathTacking matches 0 run function kill_handle:uuid_check/success