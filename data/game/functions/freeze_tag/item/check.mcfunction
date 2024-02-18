# called to check a freeze tag item
# game:freeze_tag/item/check | called from game:freeze_tag/main
# @s = item with FreezeTagItem:1b nbt tag

execute as @s[tag=!ided] run function killstreak:setup/id

tag @s add freeze_tag_item
tag @s[nbt={Item:{id:"minecraft:blaze_powder"}}] add blaze_powder
tag @s[nbt={Item:{id:"minecraft:ice"}}] add ice

#check the dropper is not frozen
execute at @a[scores={gm_inGame=1..},tag=!frozen] if score @p[scores={gm_inGame=1..},tag=!frozen] gm_id = @s gm_id run tag @s add ft_found_player
kill @s[tag=!ft_found_player]