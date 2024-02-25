# called when to update power up point dropping
# lobby:options/sign/5/update | called by lobby:options/option/5/update

execute if score ks_pointDropping gm_options matches 1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_point_dropping] run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"True","color":"green"}'
execute if score ks_pointDropping gm_options matches 1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_point_dropping] run data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 5"}}'
execute if score ks_pointDropping gm_options matches 0 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_point_dropping] run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"False","color":"red"}'
execute if score ks_pointDropping gm_options matches 0 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_point_dropping] run data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"Default","color":"green","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 5"}}'
