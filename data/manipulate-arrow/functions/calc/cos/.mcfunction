#> manipulate-arrow:calc/cos/
# sinを求める 入力は角度*100
## 入力: (int)実数 => score Ryukkun_temp $in
## 出力: (int)sin*100000 => score Ryukkun_temp $out

# cosΘ = sin(90 - Θ)
scoreboard players operation $_in Ryukkun_temp = $9000 Ryukkun_temp
scoreboard players operation $_in Ryukkun_temp -= $in Ryukkun_temp

# get sin
function manipulate-arrow:calc/sin/main