# called as a player who is frozen who is defrosting
# game:freeze_tag/player_effects/defrosting | Caled from game:freeze_tag/player_effects/frozen
# @s = frozen player

scoreboard players add @s ft_defrosting 1
particle minecraft:flame ~ ~-0.5 ~ 0.3 1 0.3 0.0001 2 normal
title @s actionbar ["",{"text":"You are being defrosted! ","color":"gold"},{"score":{"name":"@s","objective":"ft_defrosting"},"color":"green"},{"text":"% defrosted.","color":"gold"}]
