tag @e[type=area_effect_cloud,tag=ffa,tag=sheild,distance=..10] add ffa_selected
execute at @e[type=area_effect_cloud,tag=ffa_selected] unless score @e[type=area_effect_cloud,tag=ffa_selected,distance=..0.01,sort=nearest,limit=1] gm_id = @s gm_id run tag @s remove ffa_selected
execute at @e[type=area_effect_cloud,tag=ffa_selected,distance=..1,sort=nearest,limit=1] run scoreboard players reset @s ffa_invincible
execute unless entity @e[type=area_effect_cloud,tag=ffa_selected,distance=..1] run scoreboard players reset @s ffa_invincible

title @s actionbar ["",{"selector":"@e[type=area_effect_cloud,tag=ffa_selected,distance=..1,sort=nearest,limit=1]"}]

execute unless score @s ffa_invincible matches 1.. run tag @s remove respawned
execute unless score @s ffa_invincible matches 1.. run kill @s[type=area_effect_cloud,tag=ffa_selected]

tag @e[type=area_effect_cloud,tag=ffa_selected] remove ffa_selected

scoreboard players reset @s kh_killedby

tag @s remove arrow_kill
tag @s remove blownup
