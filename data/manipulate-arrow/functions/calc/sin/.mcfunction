#> manipulate-arrow:calc/sin/
# sinを求める 入力は角度*100 -36000 以上
## 入力: (int)実数 => score Ryukkun_temp $in
## 出力: (int)sin*100000 => score Ryukkun_temp $out

scoreboard players operation $_in Ryukkun_temp = $in Ryukkun_temp

function manipulate-arrow:calc/sin/main