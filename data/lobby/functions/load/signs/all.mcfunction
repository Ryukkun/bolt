#called to just spawn in all option signs

execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_respawn_time] run setblock ~ ~ ~ oak_wall_sign[facing=west]{front_text:{messages:['{"text":"Respawn Time","color":"aqua"}']}} replace
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_points_to_win] run setblock ~ ~ ~ oak_wall_sign[facing=west]{front_text:{messages:['{"text":"Points to","color":"aqua"}','{"text":"win","color":"aqua"}']}} replace
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_keep_teams] run setblock ~ ~ ~ oak_wall_sign[facing=west]{front_text:{messages:['{"text":"Keep Teams","color":"aqua"}']}} replace
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_nametags] run setblock ~ ~ ~ oak_wall_sign[facing=west]{front_text:{messages:['{"text":"Show Nametages","color":"aqua"}']}} replace
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_point_dropping] run setblock ~ ~ ~ oak_wall_sign[facing=west]{front_text:{messages:['{"text":"Allow item dropping","color":"aqua"}','{"text":"on points","color":"aqua"}']}} replace
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_tab_board] run setblock ~ ~ ~ oak_wall_sign[facing=west]{front_text:{messages:['{"text":"Score in tab","color":"aqua"}']}} replace
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_round_time] run setblock ~ ~ ~ oak_wall_sign[facing=west]{front_text:{messages:['{"text":"Max Game Time","color":"aqua"}']}} replace
execute at @e[type=area_effect_cloud,tag=marker,tag=option,tag=option_killstreaks] run setblock ~ ~ ~ oak_wall_sign[facing=west]{front_text:{messages:['{"text":"Enable kill Streaks","color":"aqua"}','{"text":"","color":"aqua"}']}} replace

