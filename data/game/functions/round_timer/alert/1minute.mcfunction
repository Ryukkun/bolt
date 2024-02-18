# called when there is only 1 minute remaining to allet all players
# game:round_timer/1minute | called by game:round_timer/update_timer

bossbar set gm:round_time name ["",{"text":"Time Remaining: ","bold":true,"color":"gold"},{"text": "1","color":"#d50801"},{"text":" minute","color":"gold"}]
bossbar set gm:round_time color red
bossbar set gm:round_time max 1200

tellraw @a ["",{"text":"!","bold":true,"color":"gold"},{"text":" 1 minute remaining!","color":"#dd120E"},{"text":" !","bold":true,"color":"gold"}]
execute at @a run playsound minecraft:block.anvil.land master @p ~ ~ ~ 10000000 1
