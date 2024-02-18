# called when a powerup/ killstreak item has been dropped on a cap point or spawn
# killstreak:return_item_all | killstreak:check_item
# @s = item to return

execute store result score $count cm_miscellaneous run data get entity @s Item.Count
scoreboard players add $count cm_miscellaneous 1
function killstreak:return_item

tag @s add failed
