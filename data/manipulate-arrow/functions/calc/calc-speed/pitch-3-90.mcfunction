# pitchが 4.. || ..4 の場合はこっち

# motionは最大で大体3 -> ArrowSpeed 30000
execute store result score @s ArrowSpeed run data get entity @s Motion[1] 10000
execute store result score $in Ryukkun_temp run data get entity @p Rotation[1] 100
function manipulate-arrow:calc/get_sin

# max 3000000000 30億
scoreboard players operation @s ArrowSpeed *= $10000 Ryukkun_temp
# 最大30000
scoreboard players operation @s ArrowSpeed /= $out Ryukkun_temp