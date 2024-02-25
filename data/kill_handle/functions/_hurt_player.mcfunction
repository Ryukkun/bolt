# playerを矢で射抜いたときに実行
# @s = 矢で射抜いたプレイヤー

# Friendly Fire
## !freeze_tag
execute unless score gameMode cm_main matches 3 run tag @s add fox_continue

## freeze_tag
execute if score gameMode cm_main matches 3 unless score $friendlyFire fox_settings matches 1 if entity @s[team=1blue] if entity @p[team=3red,tag=fox_hurtByPlayer] run tag @s add fox_continue
execute if score gameMode cm_main matches 3 unless score $friendlyFire fox_settings matches 1 if entity @s[team=3red] if entity @p[team=1blue,tag=fox_hurtByPlayer] run tag @s add fox_continue
execute if score gameMode cm_main matches 3 if score $friendlyFire fox_settings matches 1 run tag @s add fox_continue


## run function
scoreboard players operation @p[tag=fox_hurtByPlayer] kh_killedby = @s[tag=fox_continue] gm_id
execute if entity @s[tag=fox_continue] as @p[tag=fox_hurtByPlayer] at @s run function kill_handle:killed/main
tag @s[tag=fox_continue] remove fox_continue
tag @a[tag=fox_hurtByPlayer] remove fox_hurtByPlayer