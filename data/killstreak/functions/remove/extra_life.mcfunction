# called to remove there extra life when they lose it
# killstreak:remove/extra_life | kill_handle:killed/main
# @s = player to remove it from

clear @s diamond_leggings
tag @s remove shielded
tellraw @s ["",{"text":"! ","bold":true,"color":"gold"},{"text":"Extra Life Lost","color":"red"}]
