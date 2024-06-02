# 角度 *100
# sin・cos *10000
# arrowSpeed *10000
# as = at = Arrow

execute store result score _ Ryukkun_temp run data get entity @s Motion[0] 10000
scoreboard players operation $sqrtIn Ryukkun_temp = _ Ryukkun_temp
scoreboard players operation $sqrtIn Ryukkun_temp *= _ Ryukkun_temp
execute store result score _ Ryukkun_temp run data get entity @s Motion[1] 10000
scoreboard players operation __ Ryukkun_temp = _ Ryukkun_temp
scoreboard players operation __ Ryukkun_temp *= _ Ryukkun_temp
scoreboard players operation $sqrtIn Ryukkun_temp += __ Ryukkun_temp
execute store result score _ Ryukkun_temp run data get entity @s Motion[2] 10000
scoreboard players operation __ Ryukkun_temp = _ Ryukkun_temp
scoreboard players operation __ Ryukkun_temp *= _ Ryukkun_temp
scoreboard players operation $sqrtIn Ryukkun_temp += __ Ryukkun_temp

function manipulate-arrow:calc/sqrt/

scoreboard players operation @s ArrowSpeed = $sqrtOut Ryukkun_temp

# reset score
scoreboard players reset _ Ryukkun_temp
scoreboard players reset __ Ryukkun_temp