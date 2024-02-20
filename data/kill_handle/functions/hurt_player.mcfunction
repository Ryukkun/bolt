# playerを矢で射抜いたときに実行
# @s = 矢で射抜いたプレイヤー

advancement revoke @s only kill_handle:hurt_player
execute if score gameState cm_main matches 3 run scoreboard players operation @a[tag=fox_hurtByPlayer] kh_killedby = @s gm_id
execute if score gameState cm_main matches 3 as @p[tag=fox_hurtByPlayer] at @s run function kill_handle:killed/main
tag @a[tag=fox_hurtByPlayer] remove fox_hurtByPlayer