#called to update the game time
# lobby:options/sign/7/update | called by lobby:options/option/7/killing

execute if score maxGameTime gm_options matches -1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_round_time] run data merge block ~ ~ ~ {Text3:'{"text":"No Limit","color":"gold"}',Text4:'{"text":"Default","color":"green","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 7"}}'}

execute if score maxGameTime gm_options matches 1.. at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_round_time] run function lobby:options/sign/7/calculate

