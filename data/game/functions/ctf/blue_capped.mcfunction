kill @e[tag=blue,tag=flag]
tag @s add flag

title @a times 0 50 10
title @a[team=1blue] title ["",{"text":"Red has your flag!","color":"red","bold":true}]
title @a[team=1blue] subtitle ["",{"text":"Kill ","color":"red"},{"selector":"@s"},{"text":" to get it back!","color":"red"}]
title @a[team=3red] title ["",{"text":"You have the enemy flag!","color":"gold","bold":true}]
title @a[team=3red] subtitle ["",{"text":"Escort ","color":"gold"},{"selector":"@s"},{"text":" back to your flag!","color":"gold"}]

execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1000 0.9

tellraw @a ["",{"text":"\nGame > ","bold":true,"color":"dark_green"},{"text":"Red","bold":true,"color":"red"},{"text":" has captured ","bold":true,"color":"gold"},{"text":"Blue's","bold":true,"color":"blue"},{"text":" flag!\n","bold":true,"color":"gold"}]
bossbar set gm:blue name ["",{"text":"Blue","color":"blue","bold":true},{"text":" - "},{"text":"[Flag taken]","color":"dark_red"}]

playsound minecraft:item.trident.thunder master @a ~ ~ ~ 5 1.8

item replace entity @a[tag=flag,team=3red] armor.head with minecraft:blue_banner{display:{Name:'{"translate":"Blue Flag","color":"blue"}',Lore:['{"text":"The Blue team\'s flag"}','{"text":"Return it to your point, but make sure your own flag is safe!"}']},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}