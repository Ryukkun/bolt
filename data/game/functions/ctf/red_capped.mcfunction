kill @e[tag=red,tag=flag]
tag @s add flag

title @a times 0 50 10
title @a[team=3red] title ["",{"text":"Blue has your flag!","color":"red","bold":true}]
title @a[team=3red] subtitle ["",{"text":"Kill ","color":"red"},{"selector":"@s"},{"text":" to get it back!","color":"red"}]
title @a[team=1blue] title ["",{"text":"You have the enemy flag!","color":"gold","bold":true}]
title @a[team=1blue] subtitle ["",{"text":"Escort ","color":"gold"},{"selector":"@s"},{"text":" back to your flag!","color":"gold"}]

execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1000 0.9

tellraw @a ["",{"text":"\nGame > ","bold":true,"color":"dark_green"},{"text":"Blue","bold":true,"color":"blue"},{"text":" has captured ","bold":true,"color":"gold"},{"text":"Red's","bold":true,"color":"red"},{"text":" flag!\n","bold":true,"color":"gold"}]
bossbar set gm:red name ["",{"text":"Red","color":"red","bold":true},{"text":" - "},{"text":"[Flag taken]","color":"dark_red"}]

playsound minecraft:item.trident.thunder master @a ~ ~ ~ 5 1.8

replaceitem entity @a[tag=flag,team=1blue] armor.head minecraft:red_banner{display:{Name:'{"translate":"Red Flag","color":"red"}',Lore:['{"text":"The Red team\'s flag"}','{"text":"Return it to your point, but make sure your own flag is safe!"}']},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}