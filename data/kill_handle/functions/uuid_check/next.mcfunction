# Called to step the loop by 1
# kill_handling:uuid_check/next | called from kill_handling:uuid_check/loop

data modify storage kh:uuids players_checked append from storage kh:uuids players[0]
data remove storage kh:uuids players[0]
scoreboard players add $pos kh_mathTacking 1
function kill_handle:uuid_check/loop
