# called when a powerup/ killstreak item that is good to setup is found
# killstreak:setup/item | killstreak:check_item
# @s = item to setup

#store count
execute store result score $count cm_miscellaneous run data get entity @s Item.Count
execute if score $count cm_miscellaneous matches 2.. run function killstreak:return_item

execute as @s[nbt={Item:{tag:{sp_item:"honey_trap"}},OnGround:1b}] run function killstreak:setup/honey_trap
execute as @s[nbt={Item:{tag:{sp_item:"paint_trap"}},OnGround:1b}] run function killstreak:setup/paint_trap
execute as @s[nbt={Item:{tag:{sp_item:"tidal_wave"}},OnGround:1b}] run function killstreak:setup/tidal_wave

scoreboard players reset $count cm_miscellaneous
