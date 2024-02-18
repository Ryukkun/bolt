# called when changing points to win in tdm
# lobby:options/sign/2/tdm | called by lobby:options/option/2/tdm

execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_points_to_win] run data merge block ~ ~ ~ {Text3:'{"score":{"name":"pointsToWin","objective":"gm_options"},"color":"gold"}'}
execute if score pointsToWin gm_options matches 20 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_points_to_win] run data merge block ~ ~ ~ {Text4:'{"text":"Default","color":"green","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 2"}}'}
execute unless score pointsToWin gm_options matches 20 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_points_to_win] run data merge block ~ ~ ~ {Text4:'{"text":"","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 2"}}'}
