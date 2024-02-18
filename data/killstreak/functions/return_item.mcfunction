# called when someone accidently throws more the 1 of a power up onto the ground
# killstreak:return_item | killstreak:setup/item & killstreak:return_item_all
# @s = item of which to return

#find item type and player who dropped it
execute at @s[nbt={Item:{tag:{sp_item:"honey_trap"}}}] as @a[scores={gm_inGame=1..}] if score @e[type=item,tag=selected_item,sort=nearest,limit=1] gm_id = @s gm_id run function killstreak:items/honey_trap
execute at @s[nbt={Item:{tag:{sp_item:"paint_trap"}}}] as @a[scores={gm_inGame=1..}] if score @e[type=item,tag=selected_item,sort=nearest,limit=1] gm_id = @s gm_id run function killstreak:items/paint_trap
execute at @s[nbt={Item:{tag:{sp_item:"tidal_wave"}}}] as @a[scores={gm_inGame=1..}] if score @e[type=item,tag=selected_item,sort=nearest,limit=1] gm_id = @s gm_id run function killstreak:items/tidal_wave

#remove 1 from the count and update item
scoreboard players remove $count cm_miscellaneous 1
execute store result entity @s Item.Count byte 1 run scoreboard players get $count cm_miscellaneous
execute if score $count cm_miscellaneous matches 2.. run function killstreak:return_item
