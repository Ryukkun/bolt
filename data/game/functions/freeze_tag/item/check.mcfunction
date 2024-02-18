# called to check a freeze tag item
# game:freeze_tag/item/check | called from game:freeze_tag/main
# @s = item with FreezeTagItem:1b nbt tag

execute as @s[tag=!ided] run function killstreak:setup/id

tag @s add selected_item

#check the dropper is not frozen
execute at @a[scores={gm_inGame=1..},tag=!frozen] if score @p[scores={gm_inGame=1..},tag=!frozen] gm_id = @s gm_id run tag @s add ft_found_player
tag @s[tag=!ft_found_player] add failed


#if the item is good, set it up, if not kill it
execute as @s[tag=!failed] run function game:freeze_tag/item/setup
kill @s[tag=failed]

tag @a[tag=selected_item] remove selected_item
