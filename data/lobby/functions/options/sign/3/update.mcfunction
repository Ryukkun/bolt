# called when changing keep teams
# lobby:options/sign/3/update | called by lobby:options/option/3/update

execute if score keepTeams gm_options matches 0 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_keep_teams] run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"False","color":"red"}'
execute if score keepTeams gm_options matches 0 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_keep_teams] run data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 3"}}'
execute if score keepTeams gm_options matches 1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_keep_teams] run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"True","color":"green"}'
execute if score keepTeams gm_options matches 1 at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_keep_teams] run data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"Default","color":"green","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 3"}}'
