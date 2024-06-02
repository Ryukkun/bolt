#> manipulate-arrow:calc/sqrt/
# 平方根を求めます。入力は 1 から 2000000000 まで。
## 入力: 実数(int) => score $sqrtIn Ryukkun_tenp
## 出力: 平方根(int) => score $sqrtOut Ryukkun_tenp
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# 一時的なスコアボード
scoreboard objectives add AiMath dummy

# 設定されない可能性のある値を初期化
scoreboard players set R AiMath -1
scoreboard players set T AiMath 1
scoreboard players set $-1 AiMath -1
scoreboard players set $4 AiMath 4
scoreboard players set $16 AiMath 16
scoreboard players set $2000 AiMath 2000
scoreboard players set $200 AiMath 200
scoreboard players set $20 AiMath 20
scoreboard players set $2 AiMath 2
scoreboard players set $1000 AiMath 1000
scoreboard players set $100 AiMath 100
scoreboard players set $10 AiMath 10

# 入力に応じてスケール変更
scoreboard players operation V AiMath = $sqrtIn Ryukkun_temp
execute if score V AiMath matches ..99999999 run function manipulate-arrow:calc/sqrt/digit_loop


# 値に応じて10000の位設定
execute if score V AiMath matches 100000000.. run scoreboard players set R AiMath -10000
execute if score V AiMath matches 400000000.. run scoreboard players set R AiMath -20000
execute if score V AiMath matches 900000000.. run scoreboard players set R AiMath -30000
execute if score V AiMath matches 1600000000.. run scoreboard players set R AiMath -40000


# 値に応じて1000の位設定
scoreboard players operation _ AiMath = R AiMath
scoreboard players operation _ AiMath *= R AiMath
scoreboard players operation _ AiMath -= V AiMath
scoreboard players operation _ AiMath /= R AiMath
scoreboard players operation _ AiMath /= $2000 AiMath
scoreboard players operation _ AiMath *= $1000 AiMath
execute store result score R2 AiMath run scoreboard players operation R AiMath -= _ AiMath
# 予定より大きければ1000引く
scoreboard players operation R2 AiMath *= R AiMath
execute if score R2 AiMath > V AiMath run scoreboard players add R AiMath 1000


# 100の位を計算
scoreboard players operation _ AiMath = R AiMath
scoreboard players operation _ AiMath *= R AiMath
scoreboard players operation _ AiMath -= V AiMath
scoreboard players operation _ AiMath /= R AiMath
scoreboard players operation _ AiMath /= $200 AiMath
scoreboard players operation _ AiMath *= $100 AiMath
execute store result score R2 AiMath run scoreboard players operation R AiMath -= _ AiMath
# 予定より大きければ100引く
scoreboard players operation R2 AiMath *= R AiMath
execute if score R2 AiMath > V AiMath run scoreboard players add R AiMath 100


# 10の位を計算
scoreboard players operation _ AiMath = R AiMath
scoreboard players operation _ AiMath *= R AiMath
scoreboard players operation _ AiMath -= V AiMath
scoreboard players operation _ AiMath /= R AiMath
scoreboard players operation _ AiMath /= $20 AiMath
scoreboard players operation _ AiMath *= $10 AiMath
execute store result score R2 AiMath run scoreboard players operation R AiMath -= _ AiMath
# 予定より大きければ10引く
scoreboard players operation R2 AiMath *= R AiMath
execute if score R2 AiMath > V AiMath run scoreboard players add R AiMath 10


# 1の位を計算
scoreboard players operation _ AiMath = R AiMath
scoreboard players operation _ AiMath *= R AiMath
scoreboard players operation _ AiMath -= V AiMath
scoreboard players operation _ AiMath /= R AiMath
scoreboard players operation _ AiMath /= $2 AiMath
execute store result score R2 AiMath run scoreboard players operation R AiMath -= _ AiMath
# 予定より大きければ1引く
scoreboard players operation R2 AiMath *= R AiMath
execute if score R2 AiMath > V AiMath run scoreboard players add R AiMath 1


# 入力に応じてスケール変更
scoreboard players operation $sqrtOut Ryukkun_temp = R AiMath
scoreboard players operation $sqrtOut Ryukkun_temp *= $-1 AiMath
scoreboard players operation $sqrtOut Ryukkun_temp /= T AiMath


# スコアボード削除
scoreboard players reset * AiMath
scoreboard objectives remove AiMath