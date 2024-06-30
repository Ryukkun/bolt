# Called when a player has been killed by an arrow
# kill_handle:killed/arrow/othere | called from kill_handle:killed/arrow/main
# as = killしたプレイヤー, at = killされたプレイヤー

tellraw @a [{"selector":"@s"},{"text":" shot ","color":"gold"},{"selector":"@p[tag=arrow_kill,distance=0]"}]

execute unless score @s gm_team = @p[tag=arrow_kill,distance=0] gm_team run function kill_handle:killed/add_kill
execute if score gameMode cm_main matches 2 run scoreboard players add @s kills 1
