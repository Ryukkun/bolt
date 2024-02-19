# called from kill_handle:main
# as = at = @e[type=area_effect_cloud,tag=kh_tracer,tag=kh_arrow]


execute unless score @e[type=arrow,tag=setup,distance=0,limit=1] kh_arrowId = @s kh_arrowId run function kill_handle:part_of_main/kill_tracer
execute unless entity @e[type=arrow,tag=setup,distance=0,limit=1] run function kill_handle:part_of_main/kill_tracer