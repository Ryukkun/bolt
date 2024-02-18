# Called to loop though the avalible ids
# kill_handling:uuid_check/loop
scoreboard players reset $_success kh_mathTacking
execute if score $success kh_mathTacking matches 1 run data modify storage kh:uuids check set from storage kh:uuids check_uuid
execute if score $success kh_mathTacking matches 1 store success score $_success kh_mathTacking run data modify storage kh:uuids check set from entity @s UUID

execute if score $_success kh_mathTacking matches 0 run scoreboard players operation $id kh_mathTacking = @s gm_id
execute if score $_success kh_mathTacking matches 0 run scoreboard players set $success kh_mathTacking 0