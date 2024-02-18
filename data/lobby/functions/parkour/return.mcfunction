# called to return a player to their last checkpoint
# lobby:parkour/return | called by lobby:parkour/in_parkour
# @s = player who meats the critrea to return

execute at @e[type=area_effect_cloud,tag=parkour,tag=checkpoint] if score @s pk_checkpoint = @e[type=area_effect_cloud,tag=parkour,tag=checkpoint,distance=..0.1,sort=nearest,limit=1] pk_checkpoint run tp ~ ~ ~

tellraw @s {"text":"Returned to the previous checkpoint.","bold":true,"color":"gold"}

scoreboard players reset @s pk_return
