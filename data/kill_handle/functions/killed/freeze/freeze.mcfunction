# Called when a player has been shot in freeze tag
# kill_handle:killed/freeze/freeze | called from kill_handle:main
# as = at = player who was frozen
execute as @a[gamemode=adventure] if score @s gm_id = @p[tag=arrow_kill,distance=0] kh_killedby run function kill_handle:killed/freeze/other

tag @s remove arrow_kill
scoreboard players add @s gstats_deadCount 1

function kill_handle:killed/freeze/core
