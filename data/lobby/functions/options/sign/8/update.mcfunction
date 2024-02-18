# called when to change if kill streaks are enabled or not
# lobby:options/sign/8/update | called by lobby:options/option/8/update

execute if score killstreaks gm_options matches 1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_killstreaks] run data merge block ~ ~ ~ {Text3:'{"text":"True","color":"green"}',Text4:'{"text":"Default","color":"green","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 8"}}'}
execute if score killstreaks gm_options matches 0 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_killstreaks] run data merge block ~ ~ ~ {Text3:'{"text":"False","color":"red"}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 8"}}'}
