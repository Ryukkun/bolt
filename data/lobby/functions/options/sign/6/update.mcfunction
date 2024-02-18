# called when to change which scoreboard shows in tab
# lobby:options/sign/6/update | called by lobby:options/option/6/update

execute if score tabScoreboard gm_options matches 1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_tab_board] run data merge block ~ ~ ~ {Text3:'{"text":"Kill streaks","color":"green"}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 6"}}'}
execute if score tabScoreboard gm_options matches 0 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_tab_board] run data merge block ~ ~ ~ {Text3:'{"text":"Kills","color":"green"}',Text4:'{"text":"Default","color":"green","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 6"}}'}
