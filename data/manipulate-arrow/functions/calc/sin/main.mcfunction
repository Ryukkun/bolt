scoreboard players operation $_in Ryukkun_temp += $36000 Ryukkun_temp

# isMinus
scoreboard players operation $isMinus Ryukkun_temp = $_in Ryukkun_temp
scoreboard players operation $isMinus Ryukkun_temp /= $18000 Ryukkun_temp
scoreboard players operation $isMinus Ryukkun_temp %= $2 Ryukkun_temp

# to 0..180
scoreboard players operation $_in Ryukkun_temp %= $18000 Ryukkun_temp

# to 0..90 :: sinΘ = sin(180-Θ)
execute if score $_in Ryukkun_temp matches 9001.. run scoreboard players operation _ Ryukkun_temp = $_in Ryukkun_temp
execute if score $_in Ryukkun_temp matches 9001.. run scoreboard players operation $_in Ryukkun_temp = $18000 Ryukkun_temp
execute if score $_in Ryukkun_temp matches 9001.. run scoreboard players operation $_in Ryukkun_temp -= _ Ryukkun_temp
scoreboard players reset _ Ryukkun_temp


## get
function manipulate-arrow:calc/sin/0/0


# isMinus
execute if score $isMinus Ryukkun_temp matches 1 run scoreboard players operation $out Ryukkun_temp *= $-1 Ryukkun_temp

# reset
scoreboard players reset $isMinus Ryukkun_temp
scoreboard players reset $_in Ryukkun_temp