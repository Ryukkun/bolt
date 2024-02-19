# called from kill_handle:uuid_check/loop
# @s = Player

scoreboard players operation $id kh_mathTacking = @s gm_id
scoreboard players set $success kh_mathTacking 0