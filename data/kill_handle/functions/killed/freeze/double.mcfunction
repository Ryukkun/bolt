# Called when a player has been shot while fozen
# kill_handle:killed/freeze/double | called from kill_handle:main
# @s = player who was frozen
tag @s remove arrow_kill

clear @s #game:freeze_items
gamemode adventure @s
