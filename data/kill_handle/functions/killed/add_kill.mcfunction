#called as a player who has killed someone
# kill_handle:killed/add_kill | called from kill_handle:killed/*
# @s = player who has killed someone
scoreboard players add @s kills 1

execute as @s[team=3red] run scoreboard players add @e[type=area_effect_cloud,tag=red,tag=spawn,limit=1] tdm_kills 1
execute as @s[team=1blue] run scoreboard players add @e[type=area_effect_cloud,tag=blue,tag=spawn,limit=1] tdm_kills 1

execute unless score ks_kill gm_main matches 1 if score killstreaks gm_options matches 1 run scoreboard players add @s killStreak 1
execute unless score ks_kill gm_main matches 1 if score killstreaks gm_options matches 1 run function killstreak:check_streak

scoreboard players reset ks_kill gm_main
