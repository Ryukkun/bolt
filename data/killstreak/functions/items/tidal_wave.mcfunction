#called to give a player the tidal wave
# killstreak:items/tidal_wave | #called from multiple places
# @s = player who is getting the item
give @s blue_ice{keepitem:1b,sp_item:"tidal_wave",powerup:1b,display:{Name:'{"text":"Tidal Wave","italic":false,"color":"green"}',Lore:['{"text":"Use to kill everyone!","color":"dark_aqua"}','{"text":""}','{"text":"Drop to trigger","color":"gray"}']}}
