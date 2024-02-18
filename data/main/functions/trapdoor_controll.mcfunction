#called to controll trapdoors

#spruce
execute at @e[type=area_effect_cloud,tag=trapdoor,tag=spruce,tag=bottom,tag=north,tag=closed] if block ~ ~ ~ spruce_trapdoor[open=true] run setblock ~ ~ ~ spruce_trapdoor[facing=north,half=bottom,open=false]
execute at @e[type=area_effect_cloud,tag=trapdoor,tag=spruce,tag=bottom,tag=east,tag=closed] if block ~ ~ ~ spruce_trapdoor[open=true] run setblock ~ ~ ~ spruce_trapdoor[facing=east,half=bottom,open=false]
execute at @e[type=area_effect_cloud,tag=trapdoor,tag=spruce,tag=top,tag=north,tag=closed] if block ~ ~ ~ spruce_trapdoor[open=true] run setblock ~ ~ ~ spruce_trapdoor[facing=north,half=top,open=false]
execute at @e[type=area_effect_cloud,tag=trapdoor,tag=spruce,tag=top,tag=east,tag=closed] if block ~ ~ ~ spruce_trapdoor[open=true] run setblock ~ ~ ~ spruce_trapdoor[facing=north,half=top,open=false]

execute at @e[type=area_effect_cloud,tag=trapdoor,tag=spruce,tag=bottom,tag=north,tag=open] if block ~ ~ ~ spruce_trapdoor[open=false] run setblock ~ ~ ~ spruce_trapdoor[facing=north,half=bottom,open=true]
execute at @e[type=area_effect_cloud,tag=trapdoor,tag=spruce,tag=bottom,tag=east,tag=open] if block ~ ~ ~ spruce_trapdoor[open=false] run setblock ~ ~ ~ spruce_trapdoor[facing=east,half=bottom,open=true]
execute at @e[type=area_effect_cloud,tag=trapdoor,tag=spruce,tag=bottom,tag=south,tag=open] if block ~ ~ ~ spruce_trapdoor[open=false] run setblock ~ ~ ~ spruce_trapdoor[facing=south,half=bottom,open=true]
execute at @e[type=area_effect_cloud,tag=trapdoor,tag=spruce,tag=bottom,tag=west,tag=open] if block ~ ~ ~ spruce_trapdoor[open=false] run setblock ~ ~ ~ spruce_trapdoor[facing=west,half=bottom,open=true]

execute at @e[type=area_effect_cloud,tag=trapdoor,tag=oak,tag=bottom,tag=north,tag=closed] if block ~ ~ ~ oak_trapdoor[open=true] run setblock ~ ~ ~ oak_trapdoor[facing=north,half=bottom,open=false]
execute at @e[type=area_effect_cloud,tag=trapdoor,tag=oak,tag=top,tag=north,tag=closed] if block ~ ~ ~ oak_trapdoor[open=true] run setblock ~ ~ ~ oak_trapdoor[facing=north,half=top,open=false]

execute at @e[type=area_effect_cloud,tag=trapdoor,tag=oak,tag=bottom,tag=north,tag=open] if block ~ ~ ~ oak_trapdoor[open=false] run setblock ~ ~ ~ oak_trapdoor[facing=north,half=bottom,open=true]
execute at @e[type=area_effect_cloud,tag=trapdoor,tag=oak,tag=bottom,tag=east,tag=open] if block ~ ~ ~ oak_trapdoor[open=false] run setblock ~ ~ ~ oak_trapdoor[facing=east,half=bottom,open=true]
execute at @e[type=area_effect_cloud,tag=trapdoor,tag=oak,tag=bottom,tag=south,tag=open] if block ~ ~ ~ oak_trapdoor[open=false] run setblock ~ ~ ~ oak_trapdoor[facing=south,half=bottom,open=true]
execute at @e[type=area_effect_cloud,tag=trapdoor,tag=oak,tag=bottom,tag=west,tag=open] if block ~ ~ ~ oak_trapdoor[open=false] run setblock ~ ~ ~ oak_trapdoor[facing=west,half=bottom,open=true]
