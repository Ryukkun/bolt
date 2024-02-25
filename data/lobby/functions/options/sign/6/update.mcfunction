# called when to change which scoreboard shows in tab
# lobby:options/sign/6/update | called by lobby:options/option/6/update

execute unless score gameMode cm_main matches 3 if score tabScoreboard gm_options matches 1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_tab_board] run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"Kill streaks","color":"green"}'
execute unless score gameMode cm_main matches 3 if score tabScoreboard gm_options matches 1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_tab_board] run data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 6"}}'
execute unless score gameMode cm_main matches 3 if score tabScoreboard gm_options matches 0 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_tab_board] run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"Kills","color":"green"}'
execute unless score gameMode cm_main matches 3 if score tabScoreboard gm_options matches 0 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_tab_board] run data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"Default","color":"green","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 6"}}'


execute if score gameMode cm_main matches 3 unless score $friendlyFire fox_settings matches 1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_tab_board] run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"False","color":"red"}'
execute if score gameMode cm_main matches 3 unless score $friendlyFire fox_settings matches 1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_tab_board] run data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"Default","color":"green","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 6"}}'
execute if score gameMode cm_main matches 3 if score $friendlyFire fox_settings matches 1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_tab_board] run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"True","color":"green"}'
execute if score gameMode cm_main matches 3 if score $friendlyFire fox_settings matches 1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_tab_board] run data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 6"}}'
