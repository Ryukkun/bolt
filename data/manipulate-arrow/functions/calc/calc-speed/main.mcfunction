# 角度 *100
# sin・cos *10000
# arrowSpeed *10000


execute store result score $pitch Ryukkun_temp run data get entity @p Rotation[1] 100

# いざ計算
execute if score $pitch Ryukkun_temp matches -200..200 run function manipulate-arrow:calc/calc-speed/pitch-0
execute unless score $pitch Ryukkun_temp matches -200..200 run function manipulate-arrow:calc/calc-speed/pitch-3-90

# |@s ArrwoSpeed|
execute if score @s ArrowSpeed matches ..0 run scoreboard players operation @s ArrowSpeed *= $-1 Ryukkun_temp

# reset score
scoreboard players reset $pitch Ryukkun_temp
scoreboard players reset $yaw Ryukkun_temp