# pitchが -3..3 の場合はこっち

execute store result score $yaw Ryukkun_temp run data get entity @p Rotation[0] 100
scoreboard players operation $useCos Ryukkun_temp = $yaw Ryukkun_temp
scoreboard players operation $useCos Ryukkun_temp += $4500 Ryukkun_temp
scoreboard players operation $useCos Ryukkun_temp /= $9000 Ryukkun_temp
scoreboard players operation $useCos Ryukkun_temp %= $2 Ryukkun_temp

execute if score $useCos Ryukkun_temp matches 0 run function manipulate-arrow:calc/calc-speed/pitch-0-z
execute if score $useCos Ryukkun_temp matches 1 run function manipulate-arrow:calc/calc-speed/pitch-0-x

scoreboard players reset $useCos Ryukkun_temp