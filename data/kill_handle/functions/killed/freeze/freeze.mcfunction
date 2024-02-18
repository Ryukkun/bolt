# Called when a player has been shot in freeze tag
# kill_handle:killed/freeze/freeze | called from kill_handle:main
# @s = player who was frozen
execute if entity @s[tag=arrow_kill] at @a[gamemode=adventure] if score @p gm_id = @s kh_killedby run tellraw @a [{"selector":"@p"},{"text":" froze ","color":"aqua"},{"selector":"@s"}]
execute at @a[gamemode=adventure] if score @p gm_id = @s kh_killedby run scoreboard players add @p kills 1

tag @s remove arrow_kill

scoreboard players add @s gstats_deadCount 1

function kill_handle:killed/freeze/core
