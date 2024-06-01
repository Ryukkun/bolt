# called when to update power up point dropping
# lobby:options/sign/5/update | called by lobby:options/option/5/update

# capture
execute if score gameMode cm_main matches 0..1 if score ks_pointDropping gm_options matches 1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_point_dropping] run data merge block ~ ~ ~ {Text3:'{"text":"True","color":"green"}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 5"}}'}
execute if score gameMode cm_main matches 0..1 if score ks_pointDropping gm_options matches 0 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_point_dropping] run data merge block ~ ~ ~ {Text3:'{"text":"False","color":"red"}',Text4:'{"text":"Default","color":"green","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 5"}}'}


# not capture (矢への効果)
execute unless score gameMode cm_main matches 0..1 if score $arrowMode fox_settings matches 0 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_point_dropping] run data merge block ~ ~ ~ {Text3:'{"text":"ノーマル","color":"green"}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 5"}}'}
execute unless score gameMode cm_main matches 0..1 if score $arrowMode fox_settings matches 1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_point_dropping] run data merge block ~ ~ ~ {Text3:'{"text":"操弾","color":"green"}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 5"}}'}