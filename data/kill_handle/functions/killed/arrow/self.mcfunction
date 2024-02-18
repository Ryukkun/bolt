# Called when a player has killed them self
# kill_handle:killed/arrow/self | called from kill_handle:killed/main
# @s = player who was killed
tellraw @a [{"selector":"@s"},{"text":" shot themselves!","color":"gold"}]
