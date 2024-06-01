# as Arrow  , at Player


## y
execute store result score $in Ryukkun_temp run data get entity @p[tag=Ryu.MArrow._,distance=..0.001] Rotation[1] 100
function manipulate-arrow:calc/get_sin
# 最大 300000000(3億) = 10000 * 30000
scoreboard players operation $out Ryukkun_temp *= @s ArrowSpeed
# 最大3まで縮小
execute store result entity @s Motion[1] double -0.00000001 run scoreboard players get $out Ryukkun_temp

## 事前計算
function manipulate-arrow:calc/get_cos
scoreboard players operation $syahen Ryukkun_temp = @s ArrowSpeed
# 最大 30億
scoreboard players operation $syahen Ryukkun_temp *= $out Ryukkun_temp
# 最大 30000 (arrowSpeedと同じ大きさ)
scoreboard players operation $syahen Ryukkun_temp /= $10000 Ryukkun_temp

## x
execute store result score $in Ryukkun_temp run data get entity @p[tag=Ryu.MArrow._,distance=..0.001] Rotation[0] 100
function manipulate-arrow:calc/get_sin
scoreboard players operation $out Ryukkun_temp *= $syahen Ryukkun_temp
execute store result entity @s Motion[0] double -0.00000001 run scoreboard players get $out Ryukkun_temp

## z
function manipulate-arrow:calc/get_cos
scoreboard players operation $out Ryukkun_temp *= $syahen Ryukkun_temp
execute store result entity @s Motion[2] double 0.00000001 run scoreboard players get $out Ryukkun_temp