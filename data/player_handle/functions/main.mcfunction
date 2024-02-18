# run when a player joins
# player_handle:main | called from main:main
execute as @a unless score @s gm_id matches 1.. run function player_handle:join
execute as @a[scores={cm_leaveGame=1..,gm_id=1..}] unless score @s gm_inGame matches 1 run function player_handle:relog
execute as @a[scores={cm_leaveGame=1..,gm_id=1..}] if score @s gm_inGame matches 1 run function player_handle:game/rejoin
