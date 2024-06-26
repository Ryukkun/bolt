# 矢で射抜かれたときにに実行
# @s = 矢で射抜かれたプレイヤー

execute if score gameState cm_main matches 3 run tag @a[tag=fox_hurtByPlayer] remove fox_hurtByPlayer
execute if score gameState cm_main matches 3 run tag @s add fox_hurtByPlayer
advancement revoke @s only kill_handle:entity_hurt_player