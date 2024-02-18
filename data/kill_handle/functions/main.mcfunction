# Hanndles all arrow and kill detection
# kill_handle:main | called from main:phases/in_game
#id arrows
execute as @e[type=arrow,tag=!setup] at @s run function kill_handle:setup_arrow
#tp traces to the arrow
execute as @e[type=area_effect_cloud,tag=kh_arrow,tag=kh_tracer] at @e[type=arrow,tag=setup] if score @e[type=arrow,tag=setup,distance=..1,sort=nearest,limit=1] kh_arrowId = @s kh_arrowId run tp ~ ~ ~
#kill traces
execute as @e[type=arrow,tag=setup,nbt={inGround:1b}] if score @e[type=area_effect_cloud,distance=..1,tag=kh_tracer,tag=kh_arrow,sort=nearest,limit=1] kh_arrowId = @s kh_arrowId run kill @e[type=area_effect_cloud,distance=..1,tag=kh_tracer,tag=kh_arrow,sort=nearest,limit=1]
kill @e[type=arrow,nbt={inGround:1b},tag=setup]

#pass ids on
execute as @e[type=area_effect_cloud,tag=kh_tracer,tag=kh_arrow] at @s unless score @e[type=arrow,tag=setup,distance=..2,sort=nearest,limit=1] kh_arrowId = @s kh_arrowId run scoreboard players operation @p[distance=..5,gamemode=adventure,advancements={kill_handle:root=true}] kh_killedby = @s gm_id
execute as @e[type=area_effect_cloud,tag=kh_tracer,tag=kh_arrow] at @s unless entity @e[type=arrow,tag=setup,distance=..2] run scoreboard players operation @p[distance=..5,gamemode=adventure,advancements={kill_handle:root=true}] kh_killedby = @s gm_id

execute as @e[type=area_effect_cloud,tag=kh_tracer,tag=kh_arrow] at @s unless score @e[type=arrow,tag=setup,distance=..2,sort=nearest,limit=1] kh_arrowId = @s kh_arrowId run kill @s
execute as @e[type=area_effect_cloud,tag=kh_tracer,tag=kh_arrow] at @s unless entity @e[type=arrow,tag=setup,distance=..2] run kill @s

#handle being shot
execute as @e[advancements={kill_handle:root=true}] at @s run function kill_handle:killed/main

#handle respawning
execute as @a[tag=dead] run function kill_handle:respawn/main
