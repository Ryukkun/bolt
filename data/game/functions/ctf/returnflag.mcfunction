execute if entity @s[team=1blue] run kill @e[tag=flag,tag=blue]
execute if entity @s[team=3red] run kill @e[tag=flag,tag=red]

execute if entity @s[team=1blue] at @e[tag=blue,tag=capturePoint] run summon armor_stand ~ ~-1.8 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["blue","flag","component","home"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],CustomName:'{"text":"blueFlag"}'}
execute if entity @s[team=3red] at @e[tag=red,tag=capturePoint] run summon armor_stand ~ ~-1.8 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["red","flag","component","home"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],CustomName:'{"text":"redFlag"}'}

execute if entity @s[team=1blue] run tellraw @a ["",{"text":"Game > ","bold":true,"color":"dark_green"},{"text":"Blue ","color":"blue","bold":true},{"text":"flag has been returned.","color":"gray","bold":true}]
execute if entity @s[team=3red] run tellraw @a ["",{"text":"Game > ","bold":true,"color":"dark_green"},{"text":"Red ","color":"red","bold":true},{"text":"flag has been returned.","color":"gray","bold":true}]

execute if entity @s[team=1blue] run bossbar set gm:blue name ["",{"text":"Blue","color":"blue","bold":true},{"text":" - "},{"text":"[Flag at Point]","color":"green"}]
execute if entity @s[team=3red] run bossbar set gm:red name ["",{"text":"Red","color":"red","bold":true},{"text":" - "},{"text":"[Flag at Point]","color":"green"}]

execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1000 0.2
