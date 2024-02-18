# Called when a player is dead to do respawning
# kill_handle:respawn/main | called from kill_handle:main
# @s = dead player
#add to there respawn time
scoreboard players add @s kh_respawnTime 1

execute if score respawnTime gm_options matches 21.. as @s run function kill_handle:respawn/countdown

#handles actuall respawn:
execute unless score gameMode cm_main matches 2 if score @s kh_respawnTime >= respawnTime gm_options run function kill_handle:respawn/respawn
execute if score gameMode cm_main matches 2 at @s if score @s kh_respawnTime >= respawnTime gm_options run function kill_handle:respawn/ffa
