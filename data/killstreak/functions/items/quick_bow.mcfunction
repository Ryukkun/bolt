#called to give a player the quick Bow
# killstreak:items/quick_bow | #called from multiple places
# @s = player who is getting the item
give @s crossbow{display:{Name:'{"text":"Quick Shot","color":"#C22B06","bold":true,"italic":false}',Lore:['{"text":"Gives you the ability to shoot rapidly.","color":"dark_aqua"}','{"text":"Shoot to use","color":"gray"}']},HideFlags:1,Damage:316,Enchantments:[{id:"minecraft:quick_charge",lvl:5}],ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b} 1
