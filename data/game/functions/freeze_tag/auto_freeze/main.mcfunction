# called when a player is within 8 blocks of a spawn
# game:freeze_tag/auto_freeze/main | called by game:freeze_tag/main

execute at @e[type=area_effect_cloud,tag=spawn,tag=blue] as @a[distance=..8,team=1blue,tag=!frozen] run scoreboard players add @s ft_autoFreeze 1
execute at @e[type=area_effect_cloud,tag=spawn,tag=red] as @a[distance=..8,team=3red,tag=!frozen] run scoreboard players add @s ft_autoFreeze 1

#reset
execute at @e[type=area_effect_cloud,tag=spawn] as @a[distance=9..,scores={ft_autoFreeze=1..}] run scoreboard players reset @s ft_autoFreeze

#warning if they have been stading on / near spawn for too long
execute as @a[scores={ft_autoFreeze=400}] run function game:freeze_tag/auto_freeze/init_warning
execute as @a[scores={ft_autoFreeze=401..600}] run function game:freeze_tag/auto_freeze/warning
execute as @a[scores={ft_autoFreeze=601}] run function game:freeze_tag/auto_freeze/freeze
