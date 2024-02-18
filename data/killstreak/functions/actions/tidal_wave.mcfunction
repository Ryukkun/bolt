# called to tick tidal waves
# killstreak:action/tidal_wave | killstreak:main
# @s = tidal wave
execute if score @s ks_decay matches 20 run tellraw @a ["",{"text":"Warning! ","bold":true,"color":"gold"},{"text":"Wave In 5","color":"dark_red"}]
execute if score @s ks_decay matches 40 run tellraw @a ["",{"text":"Warning! ","bold":true,"color":"gold"},{"text":"Wave In 4","color":"dark_red"}]
execute if score @s ks_decay matches 60 run tellraw @a ["",{"text":"Warning! ","bold":true,"color":"gold"},{"text":"Wave In 3","color":"dark_red"}]
execute if score @s ks_decay matches 80 run tellraw @a ["",{"text":"Warning! ","bold":true,"color":"gold"},{"text":"Wave In 2","color":"dark_red"}]
execute if score @s ks_decay matches 100 run tellraw @a ["",{"text":"Warning! ","bold":true,"color":"gold"},{"text":"Wave In 1","color":"dark_red"}]

execute if score @s ks_decay matches 120 run function killstreak:remove/tidal_wave
