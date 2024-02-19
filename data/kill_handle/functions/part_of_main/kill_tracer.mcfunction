# called from kill_handle:part_of_main/tracer
# as = at = @e[type=area_effect_cloud,tag=kh_tracer,tag=kh_arrow]（お相手の矢が見つからない子）

scoreboard players operation @p[distance=..5,gamemode=adventure,advancements={kill_handle:root=true}] kh_killedby = @s gm_id
kill @s