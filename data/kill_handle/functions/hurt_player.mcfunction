# playerを矢で射抜いたときに実行
# @s = 矢で射抜いたプレイヤー

advancement revoke @s only kill_handle:hurt_player
execute if score gameState cm_main matches 3 run function kill_handle:_hurt_player