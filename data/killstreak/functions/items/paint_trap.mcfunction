#called to give a player the paint trap (landmine)
# killstreak:items/paint_trap | #called from multiple places
# @s = player who is getting the item
give @s light_weighted_pressure_plate{display:{Name:'{"text":"Paint trap","color":"#2A8539","bold":true,"italic":false}',Lore:['{"text":"Explodes enemies that walk on it","color":"dark_aqua"}','{"text":"Drop to use","color":"gray"}']},keepitem:1b,sp_item:"paint_trap",powerup:1b}
