# called when a player finished the parkour
# lobby:parkour/end | called by lobby:parkour/checkpoint
# @s = player who has finished the parkour

tellraw @a ["",{"selector":"@s"},{"text":" finished the parkour in ","color":"gold"},{"score":{"name":"mins_total","objective":"pk_math"},"color":"green"},{"text":" minutes, "},{"score":{"name":"secs_total","objective":"pk_math"},"color":"green"},{"text":"."},{"score":{"name":"ms_total","objective":"pk_math"},"color":"green"},{"text":" seconds!"}]
scoreboard players reset @s pk_checkpoint
scoreboard players reset @s pk_time
scoreboard players reset @s pk_time_total
