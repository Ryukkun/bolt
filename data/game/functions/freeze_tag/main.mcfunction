# called during a round of freeze tag to controll the game
# game:freeze_tag/main

# team functions
execute as @a[team=1blue,tag=!frozen] run function game:freeze_tag/player_effects/blue
execute as @a[team=3red,tag=!frozen] run function game:freeze_tag/player_effects/red
execute as @a[tag=frozen] at @s run function game:freeze_tag/player_effects/frozen

# auto freeeze/round time
execute at @e[type=area_effect_cloud,tag=spawn] if entity @a[distance=..10] run function game:freeze_tag/auto_freeze/main
execute if score roundTime gm_main matches 100 run function game:freeze_tag/auto_freeze_warning
execute if score roundTime gm_main matches 200.. run function game:freeze_tag/auto_freeze

## Items
execute as @e[type=item,nbt={Item:{tag:{FreezeTagItem:1b}}}] at @s run function game:freeze_tag/item/check

#round handling
execute unless entity @a[team=3red,tag=!frozen] run scoreboard players set teamsFrozen gm_main 1
execute unless entity @a[team=1blue,tag=!frozen] run scoreboard players add teamsFrozen gm_main 1
execute if score teamsFrozen gm_main matches 1.. run function game:freeze_tag/round_handling/check
