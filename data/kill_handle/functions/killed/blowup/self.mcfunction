# Called when a player has killed them self
# kill_handle:killed/blowup/self | called from kill_handle:killed/main
# @s = player who was killed
tellraw @a [{"selector":"@s"},{"text":" blew themselves up!","color":"gold"}]
