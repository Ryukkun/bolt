#called to update the score on sign with trigger 1
# lobby:options/sign/1/update

execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_respawn_time] if score respawnTime gm_options matches 3 run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"Instant","color":"gold"}'
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_respawn_time] if score respawnTime gm_options matches 3 run data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"Default","color":"green","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 1"}}'
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_respawn_time] if score respawnTime gm_options matches 60 run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"3 Seconds","color":"green"}'
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_respawn_time] if score respawnTime gm_options matches 60 run data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 1"}}'
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_respawn_time] if score respawnTime gm_options matches 100 run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"5 Seconds","color":"green"}'
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_respawn_time] if score respawnTime gm_options matches 200 run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"10 Seconds","color":"green"}'

