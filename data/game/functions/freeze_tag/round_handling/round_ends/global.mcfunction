# called at the end of a round no matter who wins
# game:freeze_tag/round_handling/round_ends/global | called by game:freeze_tag/round_handling/round_ends/[others]

tag @a remove frozen
kill @e[tag=freeze,tag=idsystem]
scoreboard players reset @a ft_defrosting
kill @e[type=arrow]
kill @e[type=item]
clear @a ice
effect clear @a

team join 3red @a[team=4frozen_red]
team join 1blue @a[team=2frozen_blue]

execute as @a[team=1blue] run tp @e[tag=blue,tag=spawn,limit=1]
execute as @a[team=3red] run tp @e[tag=red,tag=spawn,limit=1]

scoreboard players reset roundTime gm_main
scoreboard players reset @a ft_autoFreeze

scoreboard players set gameState cm_main 3
