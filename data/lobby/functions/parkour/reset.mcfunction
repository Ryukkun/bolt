# called to reset them back to the start
# lobby:parkour/reset | called by lobby:parkour/in_parkour
# @s = player who wants to reset

tp @s -27.5 46.00 -9.5 90 0

tellraw @s {"text":"Parkour progress reset.","bold":true,"color":"dark_red"}

scoreboard players set @s pk_checkpoint 0
scoreboard players set @s pk_time_total 0
scoreboard players set @s pk_time 0

scoreboard players reset @s pk_reset
