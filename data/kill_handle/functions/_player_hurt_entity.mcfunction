# playerを矢で射抜いたときに実行
# @s = 矢で射抜いたプレイヤー

# Friendly Fire
## freeze_tag
execute if score gameMode cm_main matches 3 unless score $friendlyFire fox_settings matches 1 if entity @s[team=2frozen_blue] if entity @p[team=1blue,tag=fox_hurtByPlayer] run tag @s add fox_break
execute if score gameMode cm_main matches 3 unless score $friendlyFire fox_settings matches 1 if entity @s[team=4frozen_red] if entity @p[team=3red,tag=fox_hurtByPlayer] run tag @s add fox_break

## run function
execute as @s[tag=!fox_break] run scoreboard players operation @p[tag=fox_hurtByPlayer] kh_killedby = @s gm_id
execute as @s[tag=!fox_break] run tag @p[tag=fox_hurtByPlayer] add arrow_kill
execute as @s[tag=!fox_break] as @p[tag=fox_hurtByPlayer] at @s run function kill_handle:killed/main
tag @s[tag=fox_break] remove fox_break
tag @a[tag=fox_hurtByPlayer] remove fox_hurtByPlayer