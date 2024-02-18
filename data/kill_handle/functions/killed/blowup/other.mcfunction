# Called when a player has been killed by an explostion
# kill_handle:killed/blowup/othere | called from kill_handle:killed/blowup/main
# @s = player who was killed, at the player who killd them

tellraw @a [{"selector":"@p[team=!spectator]"},{"text":" blew up ","color":"gold"},{"selector":"@s"}]

execute unless score @p[team=!spectator] gm_team = @s gm_team as @p[team=!spectator] run function kill_handle:killed/add_kill
execute if score gameMode cm_main matches 2 run scoreboard players add @p kills 1

scoreboard players set ks_kill gm_main 1
