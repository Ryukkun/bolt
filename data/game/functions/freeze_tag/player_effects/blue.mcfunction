# called as a player on blue team
# game:freeze_tag/player_effects/blue | Caled from game:freeze_tag/main
# @s = blue team player

replaceitem entity @s hotbar.1 minecraft:blaze_powder{keepitem:1b,FreezeTagItem:1b,display:{Name:'{"text":"Anti-Freeze","color":"blue","italic":false}',Lore:['{"text":"Don\'t eat!","color":"dark_aqua"}','{"text":"Use on a frozen teammate to defrost","color":"dark_aqua"}','{"text":""}','{"text":"Drop to use","color":"gray"}']}}
replaceitem entity @s hotbar.2 minecraft:ice{keepitem:1b,FreezeTagItem:1b,display:{Name:'{"text":"Refreeze","color":"blue","italic":false}',Lore:['{"text":"Use to put out a fire below an enemy!","color":"dark_aqua"}','{"text":""}','{"text":"Drop to use","color":"gray"}']}}
