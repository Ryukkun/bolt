# called when entering freeze tag loading lobby to setup signs
# lobby:load/signs/freeze_tag |

execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_respawn_time] run setblock ~ ~ ~ air
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_points_to_win] run setblock ~ ~ ~ oak_wall_sign[facing=west]{front_text:{messages:['{"text":"Rounds to win","color":"aqua"}','""','""','""']}} destroy
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_keep_teams] run setblock ~ ~ ~ oak_wall_sign[facing=west]{front_text:{messages:['{"text":"Keep Teams","color":"aqua"}','""','""','""']}} destroy
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_nametags] run setblock ~ ~ ~ oak_wall_sign[facing=west]{front_text:{messages:['{"text":"Show Nametages","color":"aqua"}','""','""','""']}} destroy
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_point_dropping] run setblock ~ ~ ~ air
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_tab_board] run setblock ~ ~ ~ oak_wall_sign[facing=west]{front_text:{messages:['{"text":"フレンドリー","color":"aqua"}','{"text":"ファイヤー","color":"aqua"}','""','""']}} destroy
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_round_time] run setblock ~ ~ ~ oak_wall_sign[facing=west]{front_text:{messages:['{"text":"Max Round Time","color":"aqua"}','""','""','""']}} destroy
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_killstreaks] run setblock ~ ~ ~ oak_wall_sign[facing=west]{front_text:{messages:['{"text":"当たり判定","color":"aqua"}','""','""','""']}} destroy
