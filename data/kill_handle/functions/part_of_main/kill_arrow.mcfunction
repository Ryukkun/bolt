# call from kill_handle:main
# as = at = @e[type=arrow,tag=setup,nbt={inGround:1b}]

execute as @e[type=area_effect_cloud,distance=0,tag=kh_tracer,tag=kh_arrow,limit=1] if score @s kh_arrowId = @e[distance=0,type=arrow,limit=1] kh_arrowId run kill @s
kill @s