# Called to start a uuid check
# kill_handling:uuid_check/start

scoreboard players reset $id kh_mathTacking
scoreboard players set $success kh_mathTacking 1

# Check 3段階
execute as @p[gamemode=!spectator] run function kill_handle:uuid_check/loop
#execute if score $success kh_mathTacking matches 1 run tellraw @a [{"text": "! @P"}]
execute if score $success kh_mathTacking matches 1 as @a[gamemode=!spectator, distance=..2] run function kill_handle:uuid_check/loop
#execute if score $success kh_mathTacking matches 1 run tellraw @a [{"text": "! ..2"}]
execute if score $success kh_mathTacking matches 1 as @a[gamemode=!spectator,distance=2..] run function kill_handle:uuid_check/loop
#execute if score $success kh_mathTacking matches 1 run tellraw @a [{"text": "!@a[gamemode=spec]"}]
execute if score $success kh_mathTacking matches 1 as @a[gamemode=spectator] run function kill_handle:uuid_check/loop

# Fin 見つかんない！
execute if score $success kh_mathTacking matches 1 run scoreboard players set $id kh_mathTacking -1