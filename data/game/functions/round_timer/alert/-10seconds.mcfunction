# called when there is 10 seconds or less left
# game:round_timer/alert/-10seconds | called by game:round_timer/updates/seconds

tellraw @a ["",{"score":{"name":"display_time_left","objective":"cm_miscellaneous"},"bold":true,"color":"gold"},{"text":" seconds remaining!","bold":true,"color":"#d2120F"}]
execute at @a run playsound minecraft:block.note_block.bit master @p ~ ~ ~ 1000000 0.8
