#> manipulate-arrow:calc/calc_motion/store_motion
# 矢(as)にmotionを代入します
# as = arrow, at = player


## y
# 最大 300000000(3億) = 10000 * 30000
scoreboard players operation _ Ryukkun_temp = @s ArrowSpeed
scoreboard players operation _ Ryukkun_temp *= $pitchSin Ryukkun_temp
# 最大3まで縮小
execute store result entity @s Motion[1] double -0.00000001 run scoreboard players get _ Ryukkun_temp

## 事前計算
scoreboard players operation $syahen Ryukkun_temp = @s ArrowSpeed
# 最大 30億
scoreboard players operation $syahen Ryukkun_temp *= $pitchCos Ryukkun_temp
# 最大 30000 (arrowSpeedと同じ大きさ)
scoreboard players operation $syahen Ryukkun_temp /= $10000 Ryukkun_temp

## x
scoreboard players operation _ Ryukkun_temp = $syahen Ryukkun_temp
scoreboard players operation _ Ryukkun_temp *= $yawSin Ryukkun_temp
execute store result entity @s Motion[0] double -0.00000001 run scoreboard players get _ Ryukkun_temp

## z
scoreboard players operation _ Ryukkun_temp = $syahen Ryukkun_temp
scoreboard players operation _ Ryukkun_temp *= $yawCos Ryukkun_temp
execute store result entity @s Motion[2] double 0.00000001 run scoreboard players get _ Ryukkun_temp