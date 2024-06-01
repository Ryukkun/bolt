# $pitch match -3..3 || $yaw match -45..45 or 135..-135 の場合はこっち

execute store result score @s ArrowSpeed run data get entity @s Motion[2] 10000
execute store result score $in Ryukkun_temp run data get entity @p Rotation[0] 100
function manipulate-arrow:calc/get_cos
scoreboard players operation @s ArrowSpeed *= $10000 Ryukkun_temp
scoreboard players operation @s ArrowSpeed /= $out Ryukkun_temp