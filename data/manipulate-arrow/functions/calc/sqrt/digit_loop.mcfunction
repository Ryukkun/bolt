# 入力の桁を調節

scoreboard players operation T AiMath *= $4 AiMath
scoreboard players operation V AiMath *= $16 AiMath
execute if score V AiMath matches ..99999999 run function manipulate-arrow:calc/sqrt/digit_loop