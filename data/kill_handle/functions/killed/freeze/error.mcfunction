# Called when a player has been fozen without cause
# kill_handle:killed/freeze/error | called from kill_handle:main
# @s = player who was frozen
tellraw @a [{"selector":"@s"},{"text":" was frozen.","color":"gold"}]

tag @s remove arrow_kill

scoreboard players add @s gstats_deadCount 1

function kill_handle:killed/freeze/core
