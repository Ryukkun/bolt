#called to give a player an extra life
# killstreak:items/extra_life | #called from multiple places
# @s = player who is getting the extra life
replaceitem entity @s armor.legs minecraft:diamond_leggings{display:{Lore:["{\"text\":\"Allows you to take an extra hit.\",\"color\":\"dark_aqua\"}"]},HideFlags:1,Damage:528,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}]}
tag @s add shielded
