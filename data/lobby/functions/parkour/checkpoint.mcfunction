# called when you pass a checkpoint
# lobby:parkour/checkpoint | called by lobby:parkour/in_parkour
# @s = player at checkpoint

scoreboard players operation @s pk_checkpoint = @e[type=area_effect_cloud,distance=..4,tag=parkour,tag=checkpoint,sort=nearest,limit=1] pk_checkpoint

execute unless entity @e[type=area_effect_cloud,distance=..4,tag=parkour,tag=checkpoint,tag=end] run tellraw @a ["",{"selector":"@s"},{"text":" achieved checkpoint ","color":"gold"},{"score":{"name":"@s","objective":"pk_checkpoint"},"color":"gold"}]
tellraw @s ["",{"text":"You finished that section in ","color":"gold"},{"score":{"name":"mins_split","objective":"pk_math"},"color":"green"},{"text":" Minutes, ","color":"gold"},{"score":{"name":"secs_split","objective":"pk_math"},"color":"green"},{"text":"."},{"score":{"name":"ms_split","objective":"pk_math"},"color":"green"},{"text":" Seconds","color":"gold"}]

playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 100 0.7


execute if entity @e[type=area_effect_cloud,distance=..4,tag=parkour,tag=checkpoint,tag=end] run function lobby:parkour/end
scoreboard players set @s pk_time 0
