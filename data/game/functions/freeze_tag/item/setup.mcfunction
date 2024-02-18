# called to setup a freeze tag item
# game:freeze_tag/item/setup | called from game:freeze_tag/item/check
# @s = item with FreezeTagItem:1b nbt tag

scoreboard players add @s item_cooldown 1

execute if score @s[nbt={Item:{id:"minecraft:blaze_powder"}}] item_cooldown matches 15 run function game:freeze_tag/item/anti_freeze
execute if score @s[nbt={Item:{id:"minecraft:ice"}}] item_cooldown matches 15 run function game:freeze_tag/item/refreeze

kill @s[scores={item_cooldown=15..}]
