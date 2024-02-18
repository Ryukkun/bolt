# Called to start a uuid check
# kill_handling:uuid_check/start

scoreboard players set $pos kh_mathTacking 0
scoreboard players reset $id kh_mathTacking
scoreboard players reset $success kh_mathTacking
execute store result score $max kh_mathTacking run data get storage kh:uuids players
function kill_handle:uuid_check/loop

execute if score $success kh_mathTacking matches 1 run scoreboard players set $pos kh_mathTacking -2

data modify storage kh:uuids players prepend from storage kh:uuids players_checked[]
data remove storage kh:uuids players_checked
data remove storage kh:uuids check
data remove storage kh:uuids check_uuid

scoreboard players operation $id kh_mathTacking = $pos kh_mathTacking
scoreboard players add $id kh_mathTacking 1

