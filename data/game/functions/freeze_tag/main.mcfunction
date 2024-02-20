# called during a round of freeze tag to controll the game
# game:freeze_tag/main

# team functions
replaceitem entity @a[team=1blue, tag=!frozen] hotbar.1 minecraft:blaze_powder{keepitem:1b,FreezeTagItem:1b,display:{Name:'{"text":"Anti-Freeze","color":"blue","italic":false}',Lore:['{"text":"Don\'t eat!","color":"dark_aqua"}','{"text":"Use on a frozen teammate to defrost","color":"dark_aqua"}','{"text":""}','{"text":"Drop to use","color":"gray"}']}}
replaceitem entity @a[team=1blue, tag=!frozen] hotbar.2 minecraft:ice{keepitem:1b,FreezeTagItem:1b,display:{Name:'{"text":"Refreeze","color":"blue","italic":false}',Lore:['{"text":"Use to put out a fire below an enemy!","color":"dark_aqua"}','{"text":""}','{"text":"Drop to use","color":"gray"}']}}

replaceitem entity @a[team=3red,tag=!frozen] hotbar.1 minecraft:blaze_powder{keepitem:1b,FreezeTagItem:1b,display:{Name:'{"text":"Anti-Freeze","color":"red","italic":false}',Lore:['{"text":"Don\'t eat!","color":"dark_aqua"}','{"text":"Use on a frozen teammate to defrost","color":"dark_aqua"}','{"text":""}','{"text":"Drop to use","color":"gray"}']}}
replaceitem entity @a[team=3red,tag=!frozen] hotbar.2 minecraft:ice{keepitem:1b,FreezeTagItem:1b,display:{Name:'{"text":"Refreeze","color":"red","italic":false}',Lore:['{"text":"Use to put out a fire below an enemy!","color":"dark_aqua"}','{"text":""}','{"text":"Drop to use","color":"gray"}']}}

execute as @a[tag=frozen] at @s run function game:freeze_tag/player_effects/frozen

# auto freeze/round time
execute at @e[type=area_effect_cloud,tag=spawn] if entity @a[distance=..10] run function game:freeze_tag/auto_freeze/main
execute if score roundTime gm_main matches 100 run function game:freeze_tag/auto_freeze_warning
execute if score roundTime gm_main matches 200.. run function game:freeze_tag/auto_freeze

# 即死トラップ
execute as @e[type=arrow] at @s run function game:freeze_tag/fix_deth_trap

## Items
execute as @e[type=item,tag=!freeze_tag_item,nbt={Item:{tag:{FreezeTagItem:1b}}}] at @s run function game:freeze_tag/item/check

#if the item is good, set it up, if not kill it
execute as @e[type=item, tag=freeze_tag_item] at @s run function game:freeze_tag/item/setup


#round handling
execute unless entity @a[team=3red,tag=!frozen] run scoreboard players set teamsFrozen gm_main 1
execute unless entity @a[team=1blue,tag=!frozen] run scoreboard players add teamsFrozen gm_main 1
execute if score teamsFrozen gm_main matches 1.. run function game:freeze_tag/round_handling/check