# called as a player who is frozen
# game:freeze_tag/player_effects/defrosted | Caled from game:freeze_tag/player_effects/frozen
# @s = frozen player

execute as @e[sort=nearest,tag=freeze,type=armor_stand] if score @s gm_id = @p[distance=..0.8] gm_id run kill @s
team join 3red @s[team=4frozen_red]
team join 1blue @s[team=2frozen_blue]
tag @s remove frozen
playsound minecraft:block.glass.break master @s ~ ~ ~ 10000 1 1
scoreboard players reset @s ft_defrosting
clear @s ice
execute as @s run tellraw @a ["",{"selector": "@s"},{"text": " has defroested.","color":"aqua"}]
