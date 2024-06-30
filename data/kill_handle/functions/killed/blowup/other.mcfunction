# Called when a player has been killed by an explostion
# kill_handle:killed/blowup/othere | called from kill_handle:killed/blowup/main
# as = killしたプレイヤー, at = killされたプレイヤー

tellraw @a [{"selector":"@s"},{"text":" blew up ","color":"gold"},{"selector":"@p[tag=blownup,distance=0]"}]

execute unless score @s gm_team = @p[tag=blownup,distance=0] gm_team run function kill_handle:killed/add_kill
execute if score gameMode cm_main matches 2 run scoreboard players add @s kills 1

scoreboard players set ks_kill gm_main 1
