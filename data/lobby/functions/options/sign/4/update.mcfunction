# called when to update name tags signs
# lobby:options/sign/4/update | called by lobby:options/option/4/update

execute if score nametags gm_options matches 1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_nametags] run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"True","color":"green"}'
execute if score nametags gm_options matches 1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_nametags] run data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 4"}}'
execute if score nametags gm_options matches 0 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_nametags] run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"False","color":"red"}'
execute if score nametags gm_options matches 0 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_nametags] run data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"Default","color":"green","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 4"}}'
