# Called when a player has been killed by an arrow
# kill_handle:killed/arrow/main | called from kill_handle:killed/main
# @s = player who was killed

execute if score @s kh_killedby = @s gm_id run function kill_handle:killed/arrow/self
execute unless score @s kh_killedby = @s gm_id as @a[team=!spectator] if score @s gm_id = @p[tag=arrow_kill,distance=0] kh_killedby run function kill_handle:killed/arrow/other


tag @s remove arrow_kill
