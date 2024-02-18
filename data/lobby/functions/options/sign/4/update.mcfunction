# called when to update name tags signs
# lobby:options/sign/4/update | called by lobby:options/option/4/update

execute if score nametags gm_options matches 1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_nametags] run data merge block ~ ~ ~ {Text3:'{"text":"True","color":"green"}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 4"}}'}
execute if score nametags gm_options matches 0 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_nametags] run data merge block ~ ~ ~ {Text3:'{"text":"False","color":"red"}',Text4:'{"text":"Default","color":"green","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 4"}}'}
