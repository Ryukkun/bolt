# Called to loop though the avalible ids
# kill_handling:uuid_check/loop

data modify storage kh:uuids check set from storage kh:uuids check_uuid
execute store success score $success kh_mathTacking run data modify storage kh:uuids check set from storage kh:uuids players[0]

execute if score $success kh_mathTacking matches 1 if score $pos kh_mathTacking < $max kh_mathTacking run function kill_handle:uuid_check/next
