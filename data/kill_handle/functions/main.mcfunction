# Hanndles all arrow and kill detection
# kill_handle:main | called from main:phases/in_game
#id arrows
execute as @e[type=arrow,tag=!setup] at @s run function kill_handle:setup_arrow
#tp traces to the arrow
execute as @e[type=area_effect_cloud,tag=kh_arrow,tag=kh_tracer] at @s at @e[type=arrow,tag=setup,distance=..5] if score @e[type=arrow,tag=setup,distance=0,limit=1] kh_arrowId = @s kh_arrowId run tp ~ ~ ~
#kill traces
execute as @e[type=arrow,tag=setup,nbt={inGround:1b}] at @s run function kill_handle:part_of_main/kill_arrow

#pass ids on
execute as @e[type=area_effect_cloud,tag=kh_tracer,tag=kh_arrow] at @s run function kill_handle:part_of_main/tracer

#handle being shot
execute as @a[advancements={kill_handle:root=true}] at @s run function kill_handle:killed/main

#handle respawning
execute as @a[tag=dead] run function kill_handle:respawn/main
