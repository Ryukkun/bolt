# Called when a player has been killed by an arrow
# kill_handle:killed/arrow/othere | called from kill_handle:killed/arrow/main
# @s = player who was killed, at the player who killd them

tellraw @a [{"selector":"@p[team=!spectator]"},{"text":" shot ","color":"gold"},{"selector":"@s"}]

execute unless score @p[team=!spectator] gm_team = @s gm_team as @p[team=!spectator] run function kill_handle:killed/add_kill
execute if score gameMode cm_main matches 2 run scoreboard players add @p kills 1
