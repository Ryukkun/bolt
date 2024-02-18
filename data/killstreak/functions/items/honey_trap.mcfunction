#called to give a player the honey trap
# killstreak:items/honey_trap | #called from multiple places
# @s = player who is getting the item
give @s honey_block{display:{Name:'{"text":"Honey Trap","color":"#FFAA17","bold":true,"italic":false}',Lore:['{"text":"Blinds and slows enemies","color":"dark_aqua"}','{"text":"when they walk over it.","color":"dark_aqua"}','{"text":"Drop to use","color":"gray"}']},CustomModelData:1,keepitem:1b,sp_item:"honey_trap",powerup:1b}
