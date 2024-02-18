#called when a player startes the parkour

scoreboard players set @s pk_checkpoint 1
scoreboard players set @s pk_time_total 0
scoreboard players set @s pk_time 0

scoreboard players reset @s pk_reset
scoreboard players reset @s pk_return

tellraw @s ["",{"text":"You have started the parkour!\n","bold":true,"color":"gold"},{"text":"Reset at any point by dropping the Red Terracotta. Return to your last checkpoint by dropping the Lime Terracotta.","color":"dark_green"},{"text":"\n\nYour time starts now. Good luck!","bold":true,"color":"gold"}]
