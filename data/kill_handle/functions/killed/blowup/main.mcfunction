# Called when a player has been killed by an arrow
# kill_handle:killed/arrow/main | called from kill_handle:killed/main
# @s = player who was killed

execute if score @s kh_killedby = @s gm_id run function kill_handle:killed/blowup/self
execute unless score @s kh_killedby = @s gm_id at @a[team=!spectator] if score @p[team=!spectator] gm_id = @s kh_killedby run function kill_handle:killed/blowup/other

tag @s remove blownup
