#> manipulate-arrow:calc/calc_motion/
# as = at = Player

## sin,cos
execute store result score $in Ryukkun_temp run data get entity @p[distance=..0] Rotation[0] 100
function manipulate-arrow:calc/sin/
scoreboard players operation $yawSin Ryukkun_temp = $out Ryukkun_temp
function manipulate-arrow:calc/cos/
scoreboard players operation $yawCos Ryukkun_temp = $out Ryukkun_temp

execute store result score $in Ryukkun_temp run data get entity @p[distance=..0] Rotation[1] 100
function manipulate-arrow:calc/sin/
scoreboard players operation $pitchSin Ryukkun_temp = $out Ryukkun_temp
function manipulate-arrow:calc/cos/
scoreboard players operation $pitchCos Ryukkun_temp = $out Ryukkun_temp


## motion代入
execute as @e[type=arrow, tag=Ryu.MArrow.Loaded] if score @s gm_id = @p[distance=0] gm_id run function manipulate-arrow:calc/calc_motion/store_motion